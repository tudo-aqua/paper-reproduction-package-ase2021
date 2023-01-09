#!/usr/bin/env python3
from itertools import product
from generate_figure2 import print_header

import os
import sqlite3

OUTFOLDER="figures/heatmap_6_9"

CREATE_VIEW_Q_QUERY= """
CREATE VIEW IF NOT EXISTS q_sq_numeric_all as 
SELECT a.id, a.benchmark,
    CASE b.status
    WHEN 'true' then 1
    WHEN 'false' then 100
    ELSE 0 END as cvc5,
    CASE c.status
    WHEN 'true' then 1
    WHEN 'false' then 100
    ELSE 0 END as mathsat,
    CASE d.status
    WHEN 'true' then 1
    WHEN 'false' then 100
    ELSE 0 END as PRINCESS,
    CASE e.status
    WHEN 'true' then 1
    WHEN 'false' then 100
    ELSE 0 END as Z3,
    CASE f.status
    WHEN 'true' then 1
    WHEN 'false' then 100
    ELSE 0 END as YICES2,
    CASE g.status
    WHEN 'true' then 1
    WHEN 'false' then 100
    ELSE 0 END as VAMPIRE
from benchmarks_q_sq as a Left JOIN BENCHEXEC_Q_SQ_CVC5 as b on a.id = b.id
Left JOIN BENCHEXEC_Q_SQ_MATHSAT as c on a.id = c.id
Left JOIN BENCHEXEC_Q_SQ_PRINCESS as d on a.id = d.id
Left JOIN BENCHEXEC_Q_SQ_Z3 as e on a.id = e.id and e.pipeline = 3157
Left JOIN BENCHEXEC_Q_SQ_YICES2 as f on a.id = f.id
Left JOIN BENCHEXEC_Q_SQ_VAMPIRE as g on a.id = g.id;
"""


def gen_select_qf_query(benchmark):
    return f"""
    SELECT (total % 100) as sat,
        (total / 100) as unsat,
        count(A.ID) as heat
        FROM (SELECT
        a.ID, (CVC5 +  Z3 + MATHSAT + PRINCESS + yices2 + bitwuzla) as total
        FROM qf_sq_numeric_all as a where benchmark = '{benchmark}')  as A group by sat, unsat order by sat, unsat DESC;
"""

def gen_select_q_query(benchmark):
    return f"""
    SELECT (total % 100) as sat,
        (total / 100) as unsat,
        count(A.ID) as heat
        FROM (SELECT
        a.ID, (CVC5 +  Z3 + MATHSAT + PRINCESS + yices2 + vampire) as total
        FROM q_sq_numeric_all as a where benchmark = '{benchmark}')  as A group by sat, unsat order by sat, unsat DESC;
"""


CREATE_VIEW_QF_QUERY= f"""
CREATE VIEW IF NOT EXISTS qf_sq_numeric_all as 
SELECT a.id, a.benchmark,
    CASE b.status
    WHEN 'true' then 1
    WHEN 'false' then 100
    ELSE 0 END as cvc5,
    CASE c.status
    WHEN 'true' then 1
    WHEN 'false' then 100
    ELSE 0 END as mathsat,
    CASE d.status
    WHEN 'true' then 1
    WHEN 'false' then 100
    ELSE 0 END as PRINCESS,
    CASE e.status
    WHEN 'true' then 1
    WHEN 'false' then 100
    ELSE 0 END as Z3,
    CASE f.status
    WHEN 'true' then 1
    WHEN 'false' then 100
    ELSE 0 END as YICES2,
    CASE g.status
    WHEN 'true' then 1
    WHEN 'false' then 100
    ELSE 0 END as BITWUZLA
from benchmarks_qf_sq as a Left JOIN BENCHEXEC_QF_SQ_CVC5 as b on a.id = b.id
Left JOIN BENCHEXEC_QF_SQ_MATHSAT as c on a.id = c.id
Left JOIN BENCHEXEC_QF_SQ_PRINCESS as d on a.id = d.id
Left JOIN BENCHEXEC_QF_SQ_Z3 as e on a.id = e.id and e.pipeline = 3157
Left JOIN BENCHEXEC_QF_SQ_YICES2 as f on a.id = f.id
Left JOIN BENCHEXEC_QF_SQ_BITWUZLA as g on a.id = g.id;
"""


def create_views(conn):
    cur = conn.cursor()
    cur.execute(CREATE_VIEW_Q_QUERY)
    cur.execute(CREATE_VIEW_QF_QUERY)
    cur.close()


def write_data6(name, conn):
    cur = conn.cursor()
    cur.execute(gen_select_qf_query(name))
    with open(f"{OUTFOLDER}/{name}.csv", "w") as outfile:
        for sat, unsat, heat in cur.fetchall():
            print(f"{sat}, {unsat}, {heat}", file=outfile)
    cur.close()

def write_data9(name, conn):
    cur = conn.cursor()
    cur.execute(gen_select_q_query(name))
    with open(f"{OUTFOLDER}/{name}.csv", "w") as outfile:
        for sat, unsat, heat in cur.fetchall():
            print(f"{sat}, {unsat}, {heat}", file=outfile)
    cur.close()


def generate_one_heatmap(prefix, name):

    data = {}
    for i in range(0, 7):
        data[i] = {}
    max_val = 0
    with open(f"{OUTFOLDER}/{name}.csv") as infile:
        for line in infile:
            parts = line.strip().split(",")
            val = parts[2]
            if int(val) > max_val:
                max_val = int(val)
            data[int(parts[0])][int(parts[1])] = val
    print(name, data)

    with open(f"{OUTFOLDER}/{prefix}_{name}.tex", "w") as outfile:
        print_header(outfile)
        print(r"\begin{figure}", file=outfile)
        print(r"\resizebox{.99\columnwidth}{!}{", file=outfile)
        print(r"\begin{tabular}{cr||r|r|r|r|r|r|r|}", file=outfile)
        print(r"& & \multicolumn{7}{c|}{\textbf{UNSAT}}\\", file=outfile)
        print(r"& & 0 & 1 & 2 & 3 & 4 & 5 & 6 \\", file=outfile)
        print("\hline \hline", file=outfile)
        for i in range(0, 7):
            if i == 0:
                outfile.write(r"\multirow{7}{*}{\rot{90}{\textbf{SAT}}}")
            outfile.write(" & ")
            outfile.write(str(i))
            lineB = " & "
            for j in range(0, 7):
                value = data[i].get(j, "")
                if value != "":
                    count = value
                    value = str(value)
                outfile.write(" & ")
                lineB += " & "
                if j > 6 - i:
                    outfile.write(r"\ccg")
                    lineB += r"\ccg"
                if value != "":
                    percent = int(count) / max_val
                    percent = int(percent * 95 + 5)
                    percent = min(percent, 99)
                    outfile.write(
                        (r"\ccs{" if i > j else (r"\ccu{" if i < j else "\ccw{"))
                        + str(value)
                        + r"}{"
                        + str(percent)
                        + "}"
                    )
                else:
                    outfile.write(r"")
            print(r"\\ \cline{2-9}", file=outfile)
        print("\\end{tabular}", file=outfile)
        print(r"}", file=outfile)
        print(r"\label{fig:heatmap}", file=outfile)
        print("\\end{figure}", file=outfile)
        print(r"\end{document}", file=outfile)

if __name__ == '__main__':
    conn = sqlite3.connect("../database/string_schema_ase_journal.sqlite")
    create_views(conn)
    os.makedirs(OUTFOLDER, exist_ok=True)
    files_6 = ["QF_BV", "QF_FP", "QF_BVFP", "QF_NRA"]
    files_9 = ["BV", "FP", "BVFP", "NRA"]
    for e in files_6:
        write_data6(e, conn)
        generate_one_heatmap("heatmap_fig6", e)
    for e in files_9:
        write_data9(e, conn)
        generate_one_heatmap("heatmap_fig9", e)
