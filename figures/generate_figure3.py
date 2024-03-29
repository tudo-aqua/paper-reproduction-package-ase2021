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
  from benchmarks )as b
where
  b.GT_VOTING = 'sat' or b.GT_VOTING = 'unsat'
group by
  gt,verdict
"""

QUERY_SOLVER = r"""select
  UPPER(b.GT_VOTING) as gt,
  UPPER(case when v.benchexecstatus LIKE  'TIMEOUT%' then 'TIMEOUT' else v.benchexecstatus end) as verdict,
  count(v.ID)
from
  %%tool%% as v,
     (SELECT CASE
  WHEN GT_VOTING LIKE 'true%' THEN 'sat'
  WHEN GT_VOTING LIKE 'false%' THEN 'unsat'
  ELSe GT_VOTING
  END GT_VOTING,
          ID
  from benchmarks )as b
where
   v.id = b.id and
  (b.GT_VOTING = 'unsat' or b.GT_VOTING = 'sat')
group by
  b.GT_VOTING, verdict"""

cat = ["UNSAT", "SAT"]
tools = ["ABC", "CVC4", "OSTRICH", "PRINCESS", "SEQ", "Z3STR3", "Z3STR4"]
verdicts = ["FALSE", "TRUE", "UNKNOWN", "ERROR", "OUT OF MEMORY", "TIMEOUT"]

OUTPUT_FOLDER = "figures/summary_sat_unsat/"
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

conn = sqlite3.connect("../database/string_schema.sqlite")
cursor = conn.cursor()
cursor.execute(QUERY_VOTE)
for row in cursor.fetchall():
    print(row[0], row[1], data)
    data[row[0]][row[1]]["VOTE"] = row[2]

for t in tools:
    query = QUERY_SOLVER.replace("%%tool%%", t)
    print(t)
    cursor.execute(query)
    for row in cursor.fetchall():
        print(t, row)
        data[row[0]][row[1]][t] = row[2]

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


def create_sat_plot():
    with open(os.path.join(OUTPUT_FOLDER, "summary_sat.tex"), "w") as outfile:
        print(JOINED_HEAD, file=outfile)
        print(
            r"""\begin{axis}[
        ybar stacked,
        enlargelimits=0.15,
        legend style={
          area legend,
          at={(1.1, 1)},
          anchor=north west,
          legend columns = 1,
          font=\tiny
        },
        legend cell align ={left},
        ylabel={\# sat. instances},
        ytick={0, 4000, 8000, 12000},
        scaled y ticks = false,
        symbolic x coords={ABC, CVC4, OSTRICH, PRINCESS, SEQ, Z3STR3, Z3STR4},
        xtick=data,
        x tick label style={rotate=45,anchor=east},
        x=6mm,
        bar width=5mm,
        width=0.5\textwidth,
        height=0.5\textwidth,
        ]
    """,
            file=outfile,
        )

        for v, style in zip(verdicts, STYLES):
            print(r"\addplot+[ybar" + style + r"] plot coordinates { ", file=outfile)

            for t in tools:
                print("(" + t + ", " + str(data[cat[1]][v][t]) + ") ", file=outfile)

            print(r" };", file=outfile)

        print(JOINED_FOOTER, file=outfile)


def create_unsat_plot():
    with open(os.path.join(OUTPUT_FOLDER, "summary_unsat.tex"), "w") as outfile:
        print(JOINED_HEAD, file=outfile)
        print(
            r"""\begin{axis}[
        ybar stacked,
        enlargelimits=0.15,
        legend style={
          area legend,
          at={(1.1, 1)},
          anchor=north west,
          legend columns = 1,
          font=\tiny
        },
        legend cell align ={left},
        ylabel={\# unsat. instances},
        ytick={0, 2000, 4000, 6000, 8000, 10000, 12000},
        scaled y ticks = false,
        ymin=0,ymax=6800,
        symbolic x coords={ABC, CVC4, OSTRICH, PRINCESS, SEQ, Z3STR3, Z3STR4},
        xtick=data,
        x tick label style={rotate=45,anchor=east},
        x=6mm,
        bar width=5mm,
        width=0.6\textwidth,
        height=0.6\textwidth]
    """,
            file=outfile,
        )

        for v, style in zip(verdicts, STYLES):
            print(r"\addplot+[ybar" + style + r"] plot coordinates { ", file=outfile)

            for t in tools:
                print("(" + t + ", " + str(data[cat[0]][v][t]) + ") ", file=outfile)

            print(r" };", file=outfile)

        print(JOINED_FOOTER, file=outfile)


if __name__ == "__main__":
    create_sat_plot()
    create_unsat_plot()
