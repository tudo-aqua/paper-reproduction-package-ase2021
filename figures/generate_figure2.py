#!/usr/bin/env python3
import os
import sqlite3

from itertools import product


conn = sqlite3.connect("../database/string_schema.sqlite")
HEATMAP_QUERY = """
select
        (total % 100) as sat,
        (total / 100) as unsat,
        count(A.ID) as heat,
        SUM(CASE WHEN multi_confirmed = 'sat_confirmed' or sat_confirmed = 'confirmed' THEN 1 else 0 END) as sat_confirmed,
       SUM(CASE WHEN multi_confirmed = 'unsat_confirmed'THEN 1 else 0 END) as unsat_confirmed FROM(
SELECT A.ID, CASE
           WHEN multi_satmodel = 'true' THEN 'sat_confirmed'
            WHEN multi_unsatcore = 'true' THEN 'unsat_confirmed'
           ELSE 'unknown' END as multi_confirmed,
       multi_logstatus,
       CASE
            When jcvc4cmd_satmodel = 'true' or jcvc4_satmodel = 'true' or jz3seq_satmodel = 'true' THEN 'confirmed'
            ELSE 'unknown' END as sat_confirmed,
       jcvc4_logstatus, jz3seq_logstatus, (cvc4_numeric +  ABC_numeric + ostrich_numeric + seq_numeric + z3str3_numeric + z3str4_numeric + princess_numeric) as total
       from (SELECT ID,
                    CASE WHEN CVC4_logstatus = 'true' THEN 1 WHEN  CVC4_logstatus = 'false' THEN 100 ELSE 0 END as CVC4_numeric,
CASE WHEN ABC_logstatus = 'true' THEN 1 WHEN  ABC_logstatus = 'false' THEN 100 ELSE 0 END as ABC_numeric,
CASE WHEN OSTRICH_logstatus = 'true' THEN 1 WHEN  OSTRICH_logstatus = 'false' THEN 100 ELSE 0 END as OSTRICH_numeric,
CASE WHEN MULTI_logstatus = 'true' THEN 1 WHEN  MULTI_logstatus = 'false' THEN 100 ELSE 0 END as MULTI_numeric,
CASE WHEN MULTI_NO_UNSAT_CHECK_logstatus = 'true' THEN 1 WHEN  MULTI_NO_UNSAT_CHECK_logstatus = 'false' THEN 100 ELSE 0 END as MULTI_NO_UNSAT_CHECK_numeric,
CASE WHEN JCVC4_logstatus = 'true' THEN 1 WHEN  JCVC4_logstatus = 'false' THEN 100 ELSE 0 END as JCVC4_numeric,
CASE WHEN JZ3SEQ_logstatus = 'true' THEN 1 WHEN  JZ3SEQ_logstatus = 'false' THEN 100 ELSE 0 END as JZ3SEQ_numeric,
CASE WHEN SEQ_logstatus = 'true' THEN 1 WHEN  SEQ_logstatus = 'false' THEN 100 ELSE 0 END as SEQ_numeric,
CASE WHEN Z3STR3_logstatus = 'true' THEN 1 WHEN  Z3STR3_logstatus = 'false' THEN 100 ELSE 0 END as Z3STR3_numeric,
CASE WHEN Z3STR4_logstatus = 'true' THEN 1 WHEN  Z3STR4_logstatus = 'false' THEN 100 ELSE 0 END as Z3STR4_numeric,
CASE WHEN PRINCESS_logstatus = 'true' THEN 1 WHEN  PRINCESS_logstatus = 'false' THEN 100 ELSE 0 END as PRINCESS_numeric,
CASE WHEN TRAU_logstatus = 'true' THEN 1 WHEN  TRAU_logstatus = 'false' THEN 100 ELSE 0 END as TRAU_numeric
                    FROM solverlogs) as A
, solverlogs as B WHERE A.ID = B.ID) AS A, (SELECT count(*) as instances from benchmarks) as B group by sat, unsat order by sat, unsat DESC;
"""

OUTPUT_FOLDER = "figures/heatmap/"
os.makedirs(OUTPUT_FOLDER, exist_ok=True)


def collect_data():
    cur = conn.cursor()
    cur.execute(HEATMAP_QUERY)
    with (open(os.path.join(OUTPUT_FOLDER, "raw_data_small.csv"), "w")) as outfile:
        while row := cur.fetchone():
            print(str(row)[1:-1], file=outfile)


def print_header(file):
    print(r"\documentclass[]{article}", file=file)
    print(r"\usepackage{rotating}", file=file)
    print(r"\usepackage{multirow}", file=file)
    print(r"\usepackage{xcolor}", file=file)
    print(r"\usepackage{colortbl}", file=file)
    print(r"\def\rot{\rotatebox}", file=file)
    print(r"\begin{document}", file=file)
    print(r"\definecolor{lovelygreen}{RGB}{0,100,0}", file=file)
    print(r"\def\cca#1#2{\cellcolor{yellow!#2}{\textbf{#1}}}", file=file)
    print(r"\def\ccs#1#2{\cellcolor{lovelygreen!30}{#1}}", file=file)
    print(r"\def\ccu#1#2{\cellcolor{red!20}{#1}}", file=file)
    print(r"\def\ccn#1#2{\cellcolor{white!#2}{#1})}", file=file)
    print(r"\def\ccg{\cellcolor{gray!25}{}}", file=file)
    print(r"\def\ccw{\cellcolor{white}}", file=file)


def compute_heatmap():
    data = {}
    for i in range(0, 11):
        data[i] = {}
    with open(os.path.join(OUTPUT_FOLDER, "raw_data_small.csv")) as infile:
        for line in infile:
            parts = line.strip().split(",")
            data[int(parts[0])][int(parts[1])] = (parts[2], parts[3], parts[4])

    with open(os.path.join(OUTPUT_FOLDER, "heatmap_small.tex"), "w") as outfile:
        print_header(outfile)
        print(r"\begin{figure}", file=outfile)
        print(r"\resizebox{.99\columnwidth}{!}{", file=outfile)
        print(r"\begin{tabular}{cr||r|r|r|r|r|r|r|r|}", file=outfile)
        print(r"& & \multicolumn{8}{c|}{\textbf{UNSAT}}\\", file=outfile)
        print(r"& & 0 & 1 & 2 & 3 & 4 & 5 & 6 & 7\\", file=outfile)
        print("\hline \hline", file=outfile)
        for i in range(0, 8):
            if i == 0:
                outfile.write(r"\multirow{16}{*}{\rot{90}{\textbf{SAT}}}")
            outfile.write(" & ")
            outfile.write(r"\multirow{2}{*}{" + str(i) + r"}")
            lineB = " & "
            for j in range(0, 8):
                value = data[i].get(j, "")
                if value != "":
                    count, confirmed, unsat = value
                    # value = str(count) + " (" + str(confirmed) + ")"
                    value = str(count)
                outfile.write(" & ")
                lineB += " & "
                if j > 7 - i:
                    outfile.write(r"\ccg")
                    lineB += r"\ccg"
                if value != "":
                    percent = int(count) / 4125
                    percent = int(percent * 95 + 5)
                    percent = min(percent, 99)
                    outfile.write(r"\cca{" + str(value) + r"}{" + str(percent) + "}")
                    lineB += (
                        (r"\ccs{(" if confirmed > unsat else r"\ccu{(")
                        + confirmed
                        + "+"
                        + unsat
                        + r")}{"
                        + str(percent)
                        + "}"
                    )
                else:
                    outfile.write(r"")
                # outfile.write(str(value))

            print(r"\\", file=outfile)
            print(lineB, file=outfile)
            print(r"\\ \cline{2-10}", file=outfile)
        print("\\end{tabular}", file=outfile)
        print(r"}", file=outfile)
        print(
            r"\caption{This heatmap summaries the voting behavior of the solver set. We excluded \texttt{JCVC4}, \texttt{JZ3SEQ}, and \texttt{MULTI} from the voting to balance the solver chares fair. The value in brackets are validated SAT models produced and validated by \texttt{JCVC4} and \texttt{JZ3SEQ}. We have only attempted to validate SAT models for these two solvers.}",
            file=outfile,
        )
        print(r"\label{fig:heatmap}", file=outfile)
        print("\\end{figure}", file=outfile)
        print(r"\end{document}", file=outfile)


if __name__ == "__main__":
    collect_data()
    compute_heatmap()
