#!/usr/bin/env python3
from argparse import ArgumentParser
from glob import glob
from os import path
from subprocess import run, CalledProcessError
from tempfile import TemporaryDirectory
from zipfile import ZipFile, BadZipFile

from database.connection_manager import get_connection
from database.database_config import load_config
from database.sqlqueries.insert_queries import INSERT_LOG_ANALYSIS
from database.sqlqueries.table_queries import (
    STRING_SCHEMA,
    QF_SQ_SCHEMA,
    Q_SQ_SCHEMA,
    SCHEMA_PLACEHOLDER,
    SOLVER_PLACEHOLDER,
)


class LogAnalysisResult:
    def __init__(self, res):
        self.result = res
        self.model_confirmed = "unkown"
        self.unsat_core_confirmed = "unknown"


def unzip_folder(zipped_folder, name, fixing=False):
    print("unzipping")
    try:
        with ZipFile(zipped_folder, "r") as zipped:
            zipped.extractall(name)
    except BadZipFile:
        print("Problem due to bad zip file state with:", name)
        if fixing:
            outname = path.join(name, "fixed.zip")
            try:
                run(
                    " ".join(
                        ["yes", "|", "zip", "-FF", zipped_folder, "--out", outname]
                    ),
                    check=True,
                    shell=True,
                )
            except CalledProcessError:
                print("Cannot fix")
            unzip_folder(outname, name)


def enumerate_logs(folder):
    result = []
    print(path.join(folder, "*.log"))
    for file in glob(path.join(folder, "**", "*.log"), recursive=True):
        result.append(process_file(file))
    return result


def analyze_logs(zipped_logs, schema, fixing=False):
    SQ = schema.upper() == "SQ"
    for file in glob(path.join(zipped_logs, "*logfiles.zip")):
        basename = path.basename(file).split(".")[0]
        runtime = path.basename(file).split(".")[-3]
        print(runtime, file)
        runtime_parts = runtime.split("_")
        runtime = runtime_parts[0] + " " + runtime_parts[1].replace("-", ":")
        print(basename, file)
        solver, benchmark = basename.split("_", 1)
        print(
            f"benchmark: {benchmark}",
            benchmark.startswith("QF_"),
            schema,
            schema.upper(),
            schema.upper() == "SQ",
        )
        if SQ and benchmark.startswith("QF_"):
            schema = QF_SQ_SCHEMA
        elif SQ:
            schema = Q_SQ_SCHEMA

        print(f"Going to insert into schema: {schema}")
        if solver.upper() == "ABC-SMT":
            solver = "ABC"
        if solver == "cvc5-problems":
            solver = "CVC4"
        solver = solver.replace("-", "_")
        print(file, solver, benchmark)
        with TemporaryDirectory() as tmpFolder:
            unzip_folder(file, tmpFolder, fixing)
            result_rows = enumerate_logs(tmpFolder)
        with get_connection(load_config()) as conn:
            with conn.cursor() as cursor:
                for name, status, model_confirmed, unsat_core_confirmed in result_rows:
                    try:
                        bid = int(name.split("_", 1)[0])
                    except ValueError:
                        print("error extracting benchmark id from:", name, "skipped")
                        continue
                    query = INSERT_LOG_ANALYSIS.replace(
                        SCHEMA_PLACEHOLDER, schema
                    ).replace(SOLVER_PLACEHOLDER, solver.upper())
                    cursor.execute(
                        query,
                        (
                            bid,
                            status,
                            model_confirmed,
                            unsat_core_confirmed,
                            benchmark,
                            runtime,
                        ),
                    )
            conn.commit()


def process_file(file):
    with open(file) as inputfile:
        status = LogAnalysisResult("unknown")
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
    parser.add_argument("-i", "--logfile-folder", required=True)
    parser.add_argument("-s", "--schema", required=True)
    parser.add_argument("--fix-broken", action="store_true")
    args = vars(parser.parse_args())
    print(args)
    analyze_logs(args["logfile_folder"], args["schema"], args["fix_broken"])
