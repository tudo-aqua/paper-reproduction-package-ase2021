#!/usr/bin/env python3
import sqlite3

from glob import glob
from os import path

columns = {
    "str.contains": "CONTAINS",
    "str.len": "LEN",
    "unaryMinus": "UMINUS",
    "/": "DIV",
    "ite": "ITE",
    "re.*": "KLEENESTAR",
    "str.to.int": "STR_TO_INT",
    ">=": "GE",
    "<=": "LE",
    "assert": "ASSERT",
    "re.allchar": "ALLCHAR",
    "re.+": "KLEENEPLUS",
    "casting": "CAST_OP",
    "str.substr": "SUBSTR",
    "re.nostr": "EMPTYSTR",
    "int.to.str": "INT_TO_STR",
    "re.++": "RE_CONCAT",
    "+": "PLUS",
    "str.upper": "UPPER",
    "str.indexof": "INDEFOX",
    "<": "LT",
    "str.replace": "REPLACE",
    "str.replaceall": "REPLACEALL",
    "*": "MULT",
    "not": "NOT_OP",
    "str.prefixof": "PREFIXOF",
    ">": "GT",
    "str.in.re": "IN_RE",
    "re.range": "RANGE",
    "str.lower": "LOWER",
    "->": "IMPLY",
    "||": "OR_OP",
    "re.union": "RE_UNION",
    "str.suffixof": "SUFFIXOF",
    "str.at": "AT",
    "&&": "AND_OP",
    "str.++": "STR_CONCAT",
    "==": "EQUALS",
    "-": "MINUS",
    "=": "STR_EQ",
    "variable": "VARS",
    "str.to.re": "STR_TO_RE",
    "re.inter": "INTER",
    "exists": "EXIST",
    "forall": "FORALL",
    "MOD": "MOD",
    "let": "LET_OP",
}

conn = sqlite3.connect("../database/test.sqlite")

COLUMNS = ("\n").join([x + " INT DEFAULT 0," for x in columns.values()])
conn.execute("DROP TABLE IF EXISTS OPERATOR_FEATURES;")
CREATE_TABLE = f"""
    CREATE TABLE IF NOT EXISTS OPERATOR_FEATURES (
    ID INT PRIMARY KEY,
    {COLUMNS[:-1]}
    );
"""
conn.execute(CREATE_TABLE)
conn.commit()

for file in glob(
    path.join("..", "cleaned_string_benchmarks", "operator-statistics", "**", "*.out"),
    recursive=True,
):
    print("analyse", file)
    selected_columns = "ID,"
    values = path.basename(file).split("_", 1)[0] + ","
    upsert = ""
    with open(file) as inputf:
        for line in inputf:
            line = line.strip()
            operator, count = line.split("\t")
            operator = operator.strip()
            selected_columns += f"{columns[operator]},"
            values += f"{count},"
            upsert += f"{columns[operator]} = excluded.{columns[operator]},"

        UPSERT_STATEMENT = f"""
        INSERT INTO OPERATOR_FEATURES ({selected_columns[:-1]}) VALUES ({values[:-1]}) ON CONFLICT (ID) DO UPDATE SET {upsert[:-1]};
        """
        conn.execute(UPSERT_STATEMENT)
    conn.commit()
