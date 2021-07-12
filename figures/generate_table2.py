#!/usr/bin/env python3
import os
import sqlite3

SOLVER_PLACEHOLDER = "%XXX%"

STRATEGIES = [
    "FASTEST",
    "FASTEST_NO_ABC_Z3STR4",
    "MULTI",
    "MULTI_NO_UNSAT_CHECK",
    "ABC",
    "CVC4",
    "SEQ",
    "Z3STR3",
    "Z3STR4",
    "PRINCESS",
    "OSTRICH",
]
BENCHMARKS = {
    "appscan": "Apspscan",
    "banditfuzz": "BanditFuzz",
    "cashewsuite": "Cashew",
    "light": "Trau Light",
    "pisa": "Pisa",
    "jdart": "SVCOMP",
    "woorpje": "WWE",
    "joacosuite": "Joaco",
    "Kaluza": "Kaluza",
    "PyEx": "PyEx",
    "stringfuzz": "StringFuzz",
    "Leetcode": "Leetcode",
    "strangersuite": "Stranger",
    "z3_regression": "Z3str3",
    "nornbenchmarks": "Norn",
    "kauslersuite": "Kausler",
    "slothtests": "Sloth",
}

SOLVERS = [
    "ABC",
    "CVC4",
    "JCVC4",
    "JCVC4CMD",
    "JZ3SEQ",
    "MULTI",
    "MULTI_NO_UNSAT_CHECK",
    "SEQ",
    "Z3STR3",
    "Z3STR4",
    "PRINCESS",
    "OSTRICH",
]

SOLVER_QUERY = f"""
SELECT sum(correct) as correct, sum(dontknow) as unknown, sum(error) as error, sum(timeout) as timeout, sum(incorrect) as incorrect, COUNT(id) from (
SELECT a.benchmark as benchmark,
       CASE WHEN A.gt_voting = B.benchexecstatus and b.benchexecstatus != 'unknown' THEN 1 ELSE 0 End as correct,
       CASE WHEN B.benchexecstatus = 'unknown' THEN 1 ELSE 0 END as dontknow,
       CASE WHEN B.benchexecstatus = 'ERROR' or upper(B.benchexecstatus) = 'OUT OF MEMORY' or B.benchexecstatus = 'ABORTED' or B.benchexecstatus = 'FAILED' THEN 1 ELSE 0 END as error,
       CASE WHEN B.benchexecstatus LIKE 'TIMEOUT%' THEN 1 ELSE 0 END as timeout,
       CASE WHEN (B.benchexecstatus = 'true' or B.benchexecstatus = 'false') and A.gt_voting != B.benchexecstatus and b.benchexecstatus != 'unknown' THEN 1 ELSE 0 END as incorrect,
       B.id
from benchmarks as A,
     {SOLVER_PLACEHOLDER} as B
where A.ID = B.ID and a.gt_voting != 'unknown' and a.gt_voting != 'tie') as A;
"""

UNIQUE_COUNTS = f"""SELECT benchmark, count(ID) from benchmarks GROUP BY benchmark;"""

TIMINGS = """
SELECT 'Earliest' as Solver, SUM(CPU)*7 from fastest as a, BENCHMARKS as b where a.id = b.id and GT_VOTING != 'unknown' and GT_VOTING != 'tie'
Union
SELECT 'EarliestTrusted', SUM(CPU)*7 from fastest_no_abc_z3str4 as a, BENCHMARKS as b where a.id = b.id and GT_VOTING != 'unknown' and GT_VOTING != 'tie'
Union
SELECT 'CvcSeqCores', SUM(cpu) from MULTI as a, BENCHMARKS as b where a.id = b.id and GT_VOTING != 'unknown' and GT_VOTING != 'tie'
Union
SELECT 'CvcSeqEval', SUM(cpu) from MULTI_NO_UNSAT_CHECK as a, BENCHMARKS as b where a.id = b.id and GT_VOTING != 'unknown' and GT_VOTING != 'tie'
Union
SELECT 'ABC', SUM(CPU) from ABC as a, BENCHMARKS as b where a.id = b.id and GT_VOTING != 'unknown' and GT_VOTING != 'tie'
Union
SELECT 'CVC4', SUM(cpu) from CVC4 as a, BENCHMARKS as b where a.id = b.id and GT_VOTING != 'unknown' and GT_VOTING != 'tie'
Union
SELECT 'SEQ',SUM(cpu) from SEQ as a, BENCHMARKS as b where a.id = b.id and GT_VOTING != 'unknown' and GT_VOTING != 'tie'
Union
SELECT 'Z3STR3', SUM(cpu) from Z3STR3 as a, BENCHMARKS as b where a.id = b.id and GT_VOTING != 'unknown' and GT_VOTING != 'tie'
Union
SELECT 'Z3STR4', SUM(cpu) from Z3STR4 as a, BENCHMARKS as b where a.id = b.id and GT_VOTING != 'unknown' and GT_VOTING != 'tie'
Union
SELECT 'PRINCESS', SUM(cpu) from PRINCESS as a, BENCHMARKS as b where a.id = b.id and GT_VOTING != 'unknown' and GT_VOTING != 'tie'
Union
SELECT 'OSTRICH', SUM(cpu) from OSTRICH as a, BENCHMARKS as b where a.id = b.id and GT_VOTING != 'unknown' and GT_VOTING != 'tie';"""


OUTPUT_FOLDER = "tables/solver_performance"
os.makedirs(OUTPUT_FOLDER, exist_ok=True)
conn = sqlite3.connect("../database/string_schema.sqlite")


class SolverData:
    def __init__(self, benchmark, correct, unknown, error, timeout, incorrect):
        self.benchmark = benchmark
        self.correct = correct
        self.unknown = unknown
        self.error = error
        self.timeout = timeout
        self.incorrect = incorrect


def clean_benchmark_names(benchmark):
    return BENCHMARKS[benchmark]


def get_data_for_solver(solver):
    cursor = conn.cursor()
    query = SOLVER_QUERY.replace(SOLVER_PLACEHOLDER, solver)
    cursor.execute(query)
    for (
        correct,
        unknown,
        error,
        timeout,
        incorrect,
        check_sum,
    ) in cursor.fetchall():
        assert correct + unknown + error + timeout + incorrect == check_sum, (
            "sum ist no met for solver " + solver,
            correct,
            unknown,
            error,
            timeout,
            incorrect,
            check_sum,
        )
        data = SolverData(solver, correct, unknown, error, timeout, incorrect)
    return data


def get_maximum_per_benchmark(data):
    result = []
    current_max = -1
    for key, solver in data.items():
        val = solver.correct
        if val > current_max:
            current_max = val
    return current_max


def generate_table(data, timing):
    maximum = get_maximum_per_benchmark(data)
    columns = ""
    column_header = ""
    times = "CPU time (s) "
    for s in STRATEGIES:
        print("running solver: ", s)
        if s == "MULTI":
            s = "CvcSeqCores"
        if s == "MULTI_NO_UNSAT_CHECK":
            s = "CvcSeqEval"
        if s == "FASTEST_NO_ABC_Z3STR4":
            s = "EarliestTrusted"
        if s == "FASTEST":
            s = "Earliest"
        columns += " r |"
        column_header += r"\multicolumn{1}{c|}{\rot{75}{" + s + "}} &\n"
        times += " & " + str(timing[s])

    table = (
        r"\documentclass[]{article}"
        "\n"
        r"\usepackage{graphicx}"
        "\n"
        r"\def\rot{\rotatebox}"
        "\n"
        r"\begin{document}"
        "\n"
        r"""
                            \resizebox{0.95\textwidth}{!}{
                            \begin{tabular}{|l||"""
        + columns
        + r"""} \hline
    &"""
        + column_header[:-2]
        + r""" \\ \hline \hline
        """
    )

    table += "\\hline "
    for row in ["correct", "unknown", "error", "timeout", "incorrect"]:
        table += f"{row} "
        for solver in STRATEGIES:
            val = getattr(data[solver], row)
            if val == maximum and row == "correct":
                val = "\\textbf{" + str(val) + "}"
            table += f" & {val}"
        table += "\\\\ \\hline\n"
    table += times
    table += "\\\\ \\hline\n"

    table += r"""\end{tabular}}
            \end{document}
        """
    with open(
        os.path.join(OUTPUT_FOLDER, "table-solver-performance-generated.tex"),
        "w",
    ) as outfile:
        outfile.write(table)


def collect_data():
    data = {}
    for solver in STRATEGIES:
        data[solver] = get_data_for_solver(solver)
    return data


def collect_times():
    timing = {}
    cursor = conn.cursor()
    cursor.execute(TIMINGS)
    for solver, time in cursor.fetchall():
        timing[solver] = round(time)
    return timing


if __name__ == "__main__":
    data = collect_data()
    timing = collect_times()
    generate_table(data, timing)
