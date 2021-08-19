#!/usr/bin/env python3
import os
import sqlite3
from argparse import ArgumentParser
from os import path


RESULTFOLDER = "tables/features"
os.makedirs(RESULTFOLDER, exist_ok=True)

BENCHMARKS = [
    ("Kaluza", "Kaluza", r"47\,284"),
    ("Cashew", "cashewsuite", "394"),
    ("Stranger", "strangersuite", "4"),
    ("Sloth", "slothtests", "40"),
    ("Norn", "nornbenchmarks", r"1\,027"),
    ("StringFuzz", "stringfuzz", r"1\,065"),
    ("Joaco", "joacosuite", "94"),
    ("Appscan", "appscan", "8"),
    ("SVCOMP", "SV-COMP", "198"),
    ("Z3str3", "z3_regression", "243"),
    ("BanditFuzz", "banditfuzz", "357"),
    ("PyEx", "PyEx", "8\,414"),
    ("Leetcode", "Leetcode", r"2\,666"),
    ("Pisa", "pisa", "12"),
    ("Kausler", "kauslersuite", "120"),
    ("WWE", "woorpje", "809"),
    ("Trau Light", "light", "100"),
]
GENERAL_OPERATORS = {
    "=": "EQUALS",
    "not": "NOT_OP",
    "Type Cast": "CAST_OP",
    "ITE": "ITE",
    "=>": "IMPLY",
    "or": "OR_OP",
    "and": "AND_OP",
    "exists": "EXIST",
    "assert": "ASSERT",
}

STRING_OPERATIONS = {
    "=": "STR_EQ",
    "++": "STR_CONCAT",
    "to_re": "STR_TO_RE",
    "in_re": "IN_RE",
    "at": "AT",
    "substr": "SUBSTR",
    "prefixof": "PREFIXOF",
    "suffixof": "SUFFIXOF",
    "contains": "CONTAINS",
    "indexof": "INDEXOF",
    "replace": "REPLACE",
    "replace_all": "REPLACEALL",
    "to_int": "STR_TO_INT",
    "from_int": "INT_TO_STR",
    "lower": "LOWER",
    "upper": "UPPER",
}

REGEX_OPERATIONS = {
    "none": "EMPTYSTR",
    "allchar": "ALLCHAR",
    "++": "RE_CONCAT",
    "union": "RE_UNION",
    "inter": "INTER",
    "*": "KLEENESTAR",
    "+": "KLEENEPLUS",
    "range": "RANGE",
}

INTEGER_OPERATIONS = {
    "str.len": "LEN",
    "neg": "UMINUS",
    "/": "DIV",
    "*": "MULT",
    ">=": "GE",
    ">": "GT",
    "<": "LT",
    "<=": "LE",
    "-": "MINUS",
    "+": "PLUS",
    "mod": "MOD",
}

FEATURE_QUERY = r"""
SELECT BENCHMARK,
       COUNT(A.ID) as INSTANCES,
       SUM(CONTAINS)   as CONTAINS,
       SUM(LEN)        as LEN,
       SUM(UMINUS)     as UMINUS,
       SUM(DIV)        as DIV,
       SUM(ITE)        as ITE,
       SUM(KLEENESTAR) as KLEENESTAR,
       SUM(STR_TO_INT) as STR_TO_INT,
       SUM(GE)         as GE,
       SUM(LE)         as LE,
       SUM(ASSERT)     as ASSERT,
       SUM(ALLCHAR)    as ALLCHAR,
       SUM(KLEENEPLUS) as KLeeneplus,
       SUM("CAST_OP")       as "CAST_OP",
       SUM("SUBSTR")     as "substr",
       SUM(EMPTYSTR)   as EMPTYSTR,
       SUM(INT_TO_STR) as INT_TO_STR,
       SUM(RE_CONCAT)  as RE_CONCAT,
       SUM(PLUS)       as PLUS,
       SUM(UPPER)      as UPPER,
       SUM(INDEFOX)    as INDEXOF,
       SUM(LT)         as LT,
       SUM(REPLACE)    as REPLACE,
       SUM(REPLACEALL) as REPLACEALL,
       SUM(MULT)       as MULT,
       SUM(NOT_OP)     as NOT_OP,
       SUM(PREFIXOF)   as PREFIXOF,
       SUM(GT)         as GT,
       SUM(IN_RE)      as IN_RE,
       SUM(RANGE)      as RANGE,
       SUM(LOWER)      as LOWER,
       SUM(IMPLY)      as IMPLY,
       SUM(OR_OP)      as OR_OP,
       SUM(RE_UNION)   as RE_UNION,
       SUM(SUFFIXOF)   as SUFFIXOF,
       SUM(AT)         as AT,
       SUM(AND_OP)     as AND_OP,
       SUM(STR_CONCAT) as STR_CONCAT,
       SUM(EQUALS)     as EQUALS,
       SUM(MINUS)      as MINUS,
       SUM(STR_EQ)     as STR_EQ,
       AVG(VARS)       as DURCH_VARS,
       SUM(STR_TO_RE)  as STR_TO_RE,
       SUM(INTER)      as INTER,
       SUM(EXIST)      as EXIST,
       SUM(MOD)        as MOD
FROM OPERATOR_FEATURES as A,
     benchmarks as B
where a.ID = B.ID
group by BENCHMARK;
"""


def print_block(data, General, maping, outfile):
    print(r" \multicolumn{18}{l}{\textbf{" + General + r"}} \\ \hline", file=outfile)
    for op in maping:
        line = r"\texttt{" + op.replace("_", r"\_") + r"}"
        for _, b, _ in BENCHMARKS:
            value = f"{data[b][maping[op]]:,}"
            value = value.replace(",", r"\,")
            if value == str(0):
                value = "-"
            line += f" & ${value}$"
        line += r" \\ \hline"
        print(line, file=outfile)


def gen_table(database):

    cursor = sqlite3.connect(database)

    data = {}
    c = cursor.execute(FEATURE_QUERY)
    for row in c:
        current = row[0]
        print(current, row)
        data[current] = {}
        for idx, col in enumerate(c.description):
            if idx == 0:
                continue
            data[current][str(col[0]).upper()] = row[idx]
    cursor.close()

    with open(os.path.join(RESULTFOLDER, "feature_table.tex"), "w") as outfile:
        print(r"\documentclass[]{article}", file=outfile)
        print(r"\usepackage{rotating}", file=outfile)
        print(r"\usepackage{graphicx}", file=outfile)
        print(r"\def\rot{\rotatebox}", file=outfile)
        print(r"\begin{document}", file=outfile)
        print(r"\begin{figure}", file=outfile)
        print(
            r"""\resizebox{1\textwidth}{!}{
    \begin{tabular}{|l||r|r| r | r | r | r | r | r | r | r | r | r | r | r | r | r | r | r|} \hline""",
            file=outfile,
        )
        header = ""
        size = "Size"
        for b, _, s in BENCHMARKS:
            header += r" & \multicolumn{1}{c|}{\rot{75}{" + b + "}}"
            size += f" & ${s}$"
        header += r" \\ \hline \hline"
        size += r" \\ \hline"
        print(header, file=outfile)
        print(size, file=outfile)
        line = "Unique"
        for _, b, _ in BENCHMARKS:
            print(data.keys())
            val = str(data[b]["INSTANCES"])
            val.replace(",", r"\,")
            line += f" & ${data[b]['INSTANCES']}$"
        line += r" \\ \hline "
        print(line, file=outfile)
        print_block(data, "General", GENERAL_OPERATORS, outfile)
        print_block(data, "String", STRING_OPERATIONS, outfile)
        print_block(data, "Regular Expressions", REGEX_OPERATIONS, outfile)
        print_block(data, "Numeric", INTEGER_OPERATIONS, outfile)
        print("\\end{tabular}}", file=outfile)
        print(r"\end{figure}", file=outfile)
        print(r"\end{document}", file=outfile)


if __name__ == "__main__":
    parser = ArgumentParser()
    parser.add_argument("-o", "--originial", action="store_true")
    args = parser.parse_args()
    if args.originial:
        BENCHMARKS.remove(("SVCOMP", "SV-COMP", "198"))
        BENCHMARKS.insert(8, ("SVCOMP", "jdart", "198"))
        gen_table("../database/string_schema.sqlite")
    else:
        gen_table("../database/test.sqlite")
