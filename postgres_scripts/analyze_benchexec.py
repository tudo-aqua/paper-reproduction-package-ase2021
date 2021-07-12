#!/usr/bin/env python3
from argparse import ArgumentParser
from glob import glob
from os import path
from subprocess import run, CalledProcessError
from tempfile import TemporaryDirectory

from database.connection_manager import get_connection
from database.database_config import load_config, table_generator_path
from database.sqlqueries.insert_queries import INSERT_BENCHEXEC
from database.sqlqueries.table_queries import (
    STRING_SCHEMA,
    Q_SQ_SCHEMA,
    QF_SQ_SCHEMA,
    SCHEMA_PLACEHOLDER,
    SOLVER_PLACEHOLDER,
)


class LogAnalysisResult:
    def __init__(self, res):
        self.result = res
        self.model_confirmed = "unkown"
        self.unsat_core_confirmed = "unknown"


def generate_csv(xml_file, tmp_folder, allow_erroneous=False):
    print("generating table")
    run_cmd = [
        table_generator_path(),
        "-o",
        tmp_folder,
        "-n",
        "generated_tmp",
        "-f",
        "csv",
    ]
    if not allow_erroneous:
        run_cmd.append("--ignore-erroneous-benchmarks")
    run_cmd.append(xml_file)
    try:
        run(
            run_cmd,
            check=True,
        )
    except CalledProcessError:
        print("skipped:", xml_file)
        return None
    return path.join(tmp_folder, "generated_tmp.csv")


def analyze_csv(csv):
    rows = []
    with open(csv) as resultfile:
        resultfile.readline()
        resultfile.readline()
        resultfile.readline()
        for line in resultfile:
            line = line.split("\t")
            task = line[0]
            task_id, name = path.basename(task).split("_", 1)
            for i, x in enumerate(range(1, len(line), 5)):
                status = line[x]
                if status.upper().startswith("ERROR"):
                    status = "ERROR"

                cputime = line[x + 1]
                walltime = line[x + 2]
                memory = line[x + 3]
                host = line[x + 4]
            rows.append((task_id, status, cputime, walltime, memory))
    return rows


def analyze_logs(zipped_logs, schema, erronous_allowed=False):
    SQ = schema.upper() == "SQ"
    glob_suffix = "*xml.bz2"
    if erronous_allowed:
        glob_suffix = "*.xml*"
    for file in glob(path.join(zipped_logs, glob_suffix)):
        basename = path.basename(file).split(".")[0]
        runtime = path.basename(file).split(".")[-6]
        if file.endswith(".xml"):
            runtime = path.basename(file).split(".")[-5]
        print("runtime: ", runtime, file)
        runtime_parts = runtime.split("_")
        runtime = runtime_parts[0] + " " + runtime_parts[1].replace("-", ":")
        print("basename", basename, file)
        solver, benchmark = basename.split("_", 1)
        if SQ and benchmark.startswith("QF_"):
            schema = QF_SQ_SCHEMA
        elif SQ:
            schema = Q_SQ_SCHEMA
        print(f"Inserting data into schema: {schema}")
        if solver.upper() == "ABC-SMT":
            solver = "ABC"
        if solver == "cvc5-problems":
            solver = "cvc4"
        solver = solver.replace("-", "_")
        print(file, solver, benchmark)
        with TemporaryDirectory() as tmpFolder:
            csv = generate_csv(file, tmpFolder, erronous_allowed)
            if not csv:
                continue
            result_rows = analyze_csv(csv)
        with get_connection(load_config()) as conn:
            with conn.cursor() as cursor:
                for task_id, status, cputime, walltime, memory in result_rows:
                    try:
                        bid = int(task_id)
                    except ValueError:
                        print(
                            "error extracting benchmark id from:",
                            task_id,
                            file,
                            "skipped",
                        )
                        continue
                    query = INSERT_BENCHEXEC.replace(
                        SCHEMA_PLACEHOLDER, schema
                    ).replace(SOLVER_PLACEHOLDER, solver.upper())
                    if status == "":
                        continue
                    if status == "FAILED":
                        memory = -1
                        walltime = -1
                        cputime = -1
                    cursor.execute(
                        query,
                        (
                            bid,
                            status,
                            memory,
                            walltime,
                            cputime,
                            runtime,
                        ),
                    )
            conn.commit()


def process_file(file):
    with open(file) as inputfile:
        status = LogAnalysisResult("unkown")
        for line in inputfile:
            line = line.strip()
            if line == "RESULT: UNSAT" or line == "unsat":
                status.result = "false"
            elif line == "RESULT: SAT" or line == "sat":
                status.result = "true"
            elif line == "EVALUATED: true":
                status.model_confirmed = "true"
            elif line == "EVALUATED: false":
                status.model_confirmed = "false"
            elif line == "Checking unsat core":
                status.unsat_core_confirmed = "false"
            elif line == "UNSAT Core confirmed":
                status.unsat_core_confirmed = "true"
            elif (
                line.startswith("(error ")
                and line != '(error "no model available")'
                and line
                != '(error "Cannot get model unless immediately preceded by SAT/NOT_ENTAILED or UNKNOWN response.")'
                and not "model is not available" in line
                and not "check annotation that says sat" in line
            ):
                if status:
                    status.result = "ERROR (overwritten)"
                else:
                    status.result = "ERROR"
            elif line.startswith("*** Check failure stack trace: ***"):
                status.result = "ERROR"
            elif line.startswith(
                'Exception in thread "main" java.lang.OutOfMemoryError'
            ):
                status.result = "Out Of Memory"
            elif line.startswith("Timeout in process Solver"):
                status.result = "TIMEOUT"
        problem_name = ".".join(path.basename(file).split(".")[1:-2])
        return (
            problem_name,
            status.result,
            status.model_confirmed,
            status.unsat_core_confirmed,
        )


if __name__ == "__main__":
    parser = ArgumentParser()
    parser.add_argument("-i", "--result-folder", required=True)
    parser.add_argument("-s", "--schema", required=True)
    parser.add_argument("--allow-erroneous", action="store_true")
    args = vars(parser.parse_args())
    print(args)
    analyze_logs(args["result_folder"], args["schema"], args["allow_erroneous"])
