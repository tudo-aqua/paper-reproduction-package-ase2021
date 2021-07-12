#!/usr/bin/env python3
import os
import sqlite3


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

RESULTFOLDER = "diagrams/timing-new"
os.makedirs(RESULTFOLDER, exist_ok=True)


def write_plot():
    conn = sqlite3.connect("../database/string_schema.sqlite")
    cursor = conn.cursor()
    SOLVERS.append("FASTEST")
    SOLVERS.append("FASTEST_NO_ABC_Z3STR4")
    for solver in SOLVERS:
        with open(
            f"{RESULTFOLDER}/{solver}.csv",
            "w",
        ) as outf:
            query = f"SELECT cpu from {solver} where benchexecstatus = 'true' or benchexecstatus = 'false' ORDER BY CPU ASC;"
            cursor.execute(query)
            counter = 1
            while row := cursor.fetchone():
                print(f"{counter}, {row[0]}", file=outf)
                counter += 1


if __name__ == "__main__":
    write_plot()
