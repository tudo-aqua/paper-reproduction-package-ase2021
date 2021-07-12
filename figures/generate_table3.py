#!/usr/bin/env python3
import os
import sqlite3
import pandas as pd
import numpy as np

from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import precision_recall_fscore_support

LEARNING_VIEW = r"""create view if not exists learning
            (str_eq, not_op, equals, len, and_op, ite, at, ge, minus, substr, indefox, contains, plus, uminus,
             str_concat, replace, le, in_re, prefixof, str_to_re, re_concat, gt, kleenestar, re_union, lt, range,
             kleeneplus, mult, allchar, suffixof, "cast", emptystr, or_op, exist, str_to_int, int_to_str, inter, div,
             replaceall, mod, imply, upper, lower, benchmark, abc, cvc4, ostrich, princess, seq, z3str3, z3str4)
as
SELECT f.str_eq,
       f.not_op,
       f.equals,
       f.len,
       f.and_op,
       f.ite,
       f.at,
       f.ge,
       f.minus,
       f.substr,
       f.indefox,
       f.contains,
       f.plus,
       f.uminus,
       f.str_concat,
       f.replace,
       f.le,
       f.in_re,
       f.prefixof,
       f.str_to_re,
       f.re_concat,
       f.gt,
       f.kleenestar,
       f.re_union,
       f.lt,
       f.range,
       f.kleeneplus,
       f.mult,
       f.allchar,
       f.suffixof,
       f.cast_op                                AS "cast",
       f.emptystr,
       f.or_op,
       f.exist,
       f.str_to_int,
       f.int_to_str,
       f.inter,
       f.div,
       f.replaceall,
       f.mod,
       f.imply,
       f.upper,
       f.lower,
       a.benchmark,
       a.abc % 1000 / 100 + a.abc % 2           AS abc,
       a.cvc4 % 1000 / 100 + a.cvc4 % 2         AS cvc4,
       a.ostrich % 1000 / 100 + a.ostrich % 2   AS ostrich,
       a.princess % 1000 / 100 + a.princess % 2 AS princess,
       a.seq % 1000 / 100 + a.seq % 2           AS seq,
       a.z3str3 % 1000 / 100 + a.z3str3 % 2     AS z3str3,
       a.z3str4 % 1000 / 100 + a.z3str4 % 2     AS z3str4
FROM benchexec_all_numeric a,
     operator_features f
WHERE a.id = f.id;"""

RESULTFOLDER = "tables/learning"
os.makedirs(RESULTFOLDER, exist_ok=True)
TARGET_CSV = os.path.join(RESULTFOLDER, "learning_table.csv")
TARGET_TABLE = os.path.join(RESULTFOLDER, "learning_table.tex")


def create_view(conn):
    conn.execute(LEARNING_VIEW)
    conn.commit()


def export_data(conn):
    cur = conn.cursor()
    cur.execute("select * from learning")
    headers = [description[0] for description in cur.description]
    with open(TARGET_CSV, "w") as outf:
        while not (df := pd.DataFrame(cur.fetchall())).empty:
            df.to_csv(outf, header=headers, index=False, sep=";")


def write_table():
    with open(TARGET_TABLE, "w") as outf:
        print(
            r"""\documentclass[]{article}
\usepackage{graphicx}
\begin{document}
\begin{figure}
\resizebox{1\textwidth}{!}{""",
            file=outf,
        )
        print("\\begin{tabular}{l|rrr|lrlrlrlrlr} \\hline", file=outf)
        print(
            "\\textbf{Solver} & \\textbf{Precision} & \\textbf{Recall} & \\textbf{$F_1$ Score} & \\multicolumn{10}{c}{\\textbf{Important Variables}} \\\\ \\hline \\hline",
            file=outf,
        )

        for solver in ["abc", "cvc4", "ostrich", "princess", "seq", "z3str3", "z3str4"]:

            features = pd.read_csv(TARGET_CSV, ";")
            features = pd.get_dummies(features)

            labels = np.array(features[solver])
            labels = (labels) + 1

            features = features.drop("abc", axis=1)
            features = features.drop("cvc4", axis=1)
            features = features.drop("ostrich", axis=1)
            features = features.drop("princess", axis=1)
            features = features.drop("seq", axis=1)
            features = features.drop("z3str3", axis=1)
            features = features.drop("z3str4", axis=1)

            features = features.drop("benchmark_Kaluza", axis=1)
            features = features.drop("benchmark_Leetcode", axis=1)
            features = features.drop("benchmark_PyEx", axis=1)
            features = features.drop("benchmark_appscan", axis=1)
            features = features.drop("benchmark_banditfuzz", axis=1)
            features = features.drop("benchmark_cashewsuite", axis=1)
            features = features.drop("benchmark_jdart", axis=1)
            features = features.drop("benchmark_joacosuite", axis=1)
            features = features.drop("benchmark_kauslersuite", axis=1)
            features = features.drop("benchmark_light", axis=1)
            features = features.drop("benchmark_nornbenchmarks", axis=1)
            features = features.drop("benchmark_pisa", axis=1)
            features = features.drop("benchmark_slothtests", axis=1)
            features = features.drop("benchmark_strangersuite", axis=1)
            features = features.drop("benchmark_stringfuzz", axis=1)
            features = features.drop("benchmark_woorpje", axis=1)
            features = features.drop("benchmark_z3_regression", axis=1)

            feature_list = [
                f.replace("_", "\\_").replace("indefox", "indexof")
                for f in list(features.columns)
            ]
            features = np.array(features)

            importances = []
            precision = []
            recall = []
            fscore = []

            for i in range(5):

                (
                    train_features,
                    test_features,
                    train_labels,
                    test_labels,
                ) = train_test_split(features, labels, test_size=0.5)

                rf = RandomForestClassifier(n_estimators=100, min_impurity_decrease=0.0)
                rf.fit(train_features, train_labels)
                predictions = rf.predict(test_features)

                importances.append(list(rf.feature_importances_))
                p, r, f, support = precision_recall_fscore_support(
                    test_labels, predictions, average="weighted"
                )
                precision.append(p)
                recall.append(r)
                fscore.append(f)

            imp_avg = np.array(importances).mean(axis=0)
            imp_std = np.array(importances).std(axis=0)

            precision_avg = np.array(precision).mean()
            precision_std = np.array(precision).std()
            recall_avg = np.array(recall).mean()
            recall_std = np.array(recall).std()
            fscore_avg = np.array(fscore).mean()
            fscore_std = np.array(fscore).std()

            line = "" + solver
            line += " & ${:.2f} ~ ({:.2f})$".format(precision_avg, precision_std)
            line += " & ${:.2f} ~ ({:.2f})$".format(recall_avg, recall_std)
            line += " & ${:.2f} ~ ({:.2f})$".format(fscore_avg, fscore_std)

            feature_importances = [
                (feature, round(imp_avg, 4), round(imp_std, 4))
                for feature, imp_avg, imp_std in zip(feature_list, imp_avg, imp_std)
            ]

            feature_importances = sorted(
                feature_importances, key=lambda x: x[1], reverse=True
            )

            for i in range(5):
                line += " & \\texttt{{{}}} & ${:.2f} ~ ({:.2f})$".format(
                    *feature_importances[i]
                )

            print(line, "\\\\ \\hline", file=outf)

        print("\\end{tabular}", file=outf)
        print(
            r"""}
\end{figure}
\end{document}""",
            file=outf,
        )


if __name__ == "__main__":
    conn = sqlite3.connect("../database/string_schema.sqlite")
    create_view(conn)
    export_data(conn)
    write_table()
