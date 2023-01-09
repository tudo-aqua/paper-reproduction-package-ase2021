#!/usr/bin/env python3
import os
import sqlite3

QUERY_VOTE = r"""
select
  UPPER(b.GT_VOTING) as gt,
  UPPER(CASE
    WHEN b.GT_VOTING = 'unsat' THEN 'false'
    ELSE 'true'
  END) as verdict,
  count(b.ID)
from
   (SELECT CASE
  WHEN GT_VOTING LIKE 'true%' THEN 'sat'
  WHEN GT_VOTING LIKE 'false%' THEN 'unsat'
  ELSe GT_VOTING
  END GT_VOTING,
          ID
  from benchmarks_qf_sq )as b
where
  b.GT_VOTING = 'sat' or b.GT_VOTING = 'unsat'
group by
  gt,verdict
"""

QUERY_SOLVER = r"""select
  UPPER(b.GT_VOTING) as gt,
  UPPER(case when v.status LIKE  'TIMEOUT%' then 'TIMEOUT' WHEN v.status LIKE 'ERROR%' THEN 'ERROR' WHEN v.status LIKE 'ABORT%' THEN 'ERROR' WHEN upper(v.status) LIKE 'UNSUPPORTED' THEN 'ERROR' else v.status end) as verdict,
  count(v.ID)
from
  benchexec_qf_sq_%%tool%% as v,
     (SELECT CASE
  WHEN GT_VOTING LIKE 'true%' THEN 'sat'
  WHEN GT_VOTING LIKE 'false%' THEN 'unsat'
  ELSe GT_VOTING
  END GT_VOTING,
          ID
  from benchmarks_qf_sq )as b
where
   v.id = b.id and
  (b.GT_VOTING = 'unsat' or b.GT_VOTING = 'sat')
group by
  b.GT_VOTING, verdict"""

QUERY_Z3_SOLVER = r"""select
  UPPER(b.GT_VOTING) as gt,
  UPPER(case when v.status LIKE  'TIMEOUT%' then 'TIMEOUT' WHEN v.status LIKE 'ERROR%' THEN 'ERROR' WHEN v.status LIKE 'ABORT%' THEN 'ERROR' WHEN upper(v.status) LIKE 'UNSUPPORTED' THEN 'ERROR' else v.status end) as verdict,
  count(v.ID)
from
  benchexec_qf_sq_Z3 as v,
     (SELECT CASE
  WHEN GT_VOTING LIKE 'true%' THEN 'sat'
  WHEN GT_VOTING LIKE 'false%' THEN 'unsat'
  ELSe GT_VOTING
  END GT_VOTING,
          ID
  from benchmarks_qf_sq )as b
where
   v.id = b.id and
  (b.GT_VOTING = 'unsat' or b.GT_VOTING = 'sat') and v.pipeline = 3157
group by
  b.GT_VOTING, verdict"""

cat = ["UNSAT", "SAT"]
tools = [
    "cvc5",
    "PRINCESS",
    "Z3",
    "Yices2",
    "mathsat",
    "Bitwuzla"
]
verdicts = ["FALSE", "TRUE", "UNKNOWN", "ERROR", "OUT OF MEMORY", "TIMEOUT"]

OUTPUT_FOLDER = "figures/summary_sat_unsat_qf/"
os.makedirs(OUTPUT_FOLDER, exist_ok=True)
data = {}

for c in cat:
    data[c] = {}
    for v in verdicts:
        data[c][v] = {}
        data[c][v]["VOTE"] = 0
        for t in tools:
            data[c][v][t] = 0

STYLES = [
    ",black,pattern=north east lines",
    ",black,fill=white",
    ",black,fill=black!20",
    ",black,fill=black",
    ",black,pattern=vertical lines",
    ",black,pattern=dots",
]

conn = sqlite3.connect("../database/string_schema_ase_journal.sqlite")
cursor = conn.cursor()

print("FETCHING data")
cursor.execute(QUERY_VOTE)
for row in cursor.fetchall():
    print(row[0], row[1], data)
    data[row[0]][row[1]]["VOTE"] = row[2]

for t in tools:
    query = QUERY_SOLVER.replace("%%tool%%", t)
    if t == "Z3":
        query = QUERY_Z3_SOLVER
    print(t)
    cursor.execute(query)
    for row in cursor.fetchall():
        label = row[1] if not row[1].startswith("ERROR") else "ERROR"
        print(t, row, label)
        data[row[0]][label][t] += int(row[2])

JOINED_HEAD = r"""\documentclass[]{article}
\usepackage{tikz}
\usetikzlibrary{arrows,automata,backgrounds}
\usetikzlibrary{positioning,shadows,arrows,shapes}
\usetikzlibrary{patterns}
\usepackage{pgfplotstable}
\usepackage{rotating}
\begin{document}
\begin{figure}
\begin{tikzpicture}"""

JOINED_FOOTER = r"""\legend{UNSAT, SAT, unknown, ERROR, OUT OF MEMORY, TIMEOUT}
\end{axis}
\end{tikzpicture}
\end{figure}
\end{document}"""


def create_sat_plot(dataX, outname):
    with open(os.path.join(OUTPUT_FOLDER, outname), "w") as outfile:
        print(JOINED_HEAD, file=outfile)
        print(
            r"""\begin{axis}[
    ybar stacked,
    %title=UNSAT instances,
    enlargelimits=0.15,
    legend style={
      area legend,
      at={(1.1, 1)},
      anchor=north west,
      legend columns = 1,
      font=\tiny
    },
    legend cell align ={left},
    % legend style={at={(1.1,1)},
    %   anchor=north west,legend columns=1},
    ylabel={\# sat. instances},
    y label style={yshift=0.5em},
    ytick={0, 15000, 30000, 45000, 60000, 75000,  90000},
    scaled y ticks = false,
    symbolic x coords={cvc5, PRINCESS, Z3, Yices2, MathSAT5, Bitwuzla},
    xtick=data,
    x tick label style={rotate=45,anchor=east},
    x=6mm,
    bar width=5mm,
    width=0.5\textwidth,
    height=0.4\textwidth,
    ]
    """,
            file=outfile,
        )

        for v, style in zip(verdicts, STYLES):
            print(r"\addplot+[ybar" + style + r"] plot coordinates { ", file=outfile)

            for t in tools:
                t_name = t
                if t == "mathsat":
                    t_name = "MathSAT5"
                print("(" + t_name + ", " + str(dataX[cat[1]][v][t]) + ") ", file=outfile)

            print(r" };", file=outfile)

        print(JOINED_FOOTER, file=outfile)


def create_unsat_plot(dataX, outname):
    with open(os.path.join(OUTPUT_FOLDER, outname), "w") as outfile:
        print(JOINED_HEAD, file=outfile)
        print(
            r"""\begin{axis}[
    ybar stacked,
    %title=UNSAT instances,
    enlargelimits=0.15,
    legend style={
      area legend,
      at={(1.1, 1)},
      anchor=north west,
      legend columns = 1,
      font=\tiny
    },
    legend cell align ={left},
    % legend style={at={(1.1,1)},
    %   anchor=north west,legend columns=1},
    ylabel={\# unsat. instances},
    y label style={yshift=0.5em},
    ytick={0, 15000, 30000, 45000, 60000, 75000,  90000},
    scaled y ticks = false,
    ymin=0,ymax=90000,
    symbolic x coords={cvc5, PRINCESS, Z3, Yices2, MathSAT5, Bitwuzla},
    xtick=data,
    x tick label style={rotate=45,anchor=east},
    x=6mm,
    bar width=5mm,
    width=0.5\textwidth,
    height=0.4\textwidth,
    ]
    """,
            file=outfile,
        )

        for v, style in zip(verdicts, STYLES):
            print(r"\addplot+[ybar" + style + r"] plot coordinates { ", file=outfile)

            for t in tools:
                t_name = t
                if t == "mathsat":
                    t_name = "MathSAT5"
                print("(" + t_name + ", " + str(dataX[cat[0]][v][t]) + ") ", file=outfile)

            print(r" };", file=outfile)

        print(JOINED_FOOTER, file=outfile)


if __name__ == "__main__":
    print("CREATE SAT PLOT")
    create_sat_plot(data, "summary_sat_qf.tex")
    print("CREATE UNSAT PLOT")
    create_unsat_plot(data, "summary_unsat_qf.tex")
