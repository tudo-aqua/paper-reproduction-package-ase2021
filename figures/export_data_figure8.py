#!/usr/bin/env python3
import sqlite3
import os

target_folder = "diagrams/timeing-qf-sq"
os.makedirs("timeing-qf-sq", exist_ok=True)

SOLVERS = ["CVC5", "z3", "yices2", "mathsat", "bitwuzla", "princess"]


conn = sqlite3.connect("../database/string_schema_ase_journal.sqlite")
cursor = conn.cursor()

for solver in SOLVERS:
    query = f"SELECT cpu from benchexec_qf_sq_{solver} a, benchmarks_qf_sq b where a.id = b.id and ( status = 'true' or status = 'false') and (benchmark = 'QF_BV' or benchmark = 'QF_FP' or benchmark = 'QF_BVFP') ORDER BY CPU ASC;"
    if solver == "z3":
        query = f"SELECT cpu from benchexec_qf_sq_{solver} a, benchmarks_qf_sq b where a.id = b.id and ( status = 'true' or status = 'false') and (benchmark = 'QF_BV' or benchmark = 'QF_FP' or benchmark = 'QF_BVFP') and pipeline=3157 ORDER BY CPU ASC;"
    with open(os.path.join(target_folder, solver + ".csv"), "w") as outf:
        cursor.execute(query)
        counter = 1
        while row := cursor.fetchone():
            print(f"{counter}, {row[0]}", file=outf)
            counter += 1


CREATE_FASTEST_VIEW = r"""
CREATE VIEW IF NOT EXISTS fastest2022_qf_sq as
SELECT s.id,
       s.benchmark,
       s.gt_voting AS gt,
       CASE
           WHEN s.cpu_bitwuzla < Min(s.cpu_cvc5, s.cpu_princess, s.cpu_z3, s.cpu_mathsat, s.cpu_yices2)
               THEN s.bitwuzla
           WHEN s.cpu_cvc5 < Min(s.cpu_bitwuzla, s.cpu_princess, s.cpu_z3, s.cpu_mathsat, s.cpu_yices2) THEN s.cvc5
           WHEN s.cpu_princess < Min(s.cpu_bitwuzla, s.cpu_cvc5, s.cpu_z3, s.cpu_mathsat, s.cpu_yices2)
               THEN s.princess
           WHEN s.cpu_z3 < Min(s.cpu_bitwuzla, s.cpu_cvc5, s.cpu_princess, s.cpu_mathsat, s.cpu_yices2) THEN s.z3
           WHEN s.cpu_mathsat < Min(s.cpu_bitwuzla, s.cpu_cvc5, s.cpu_princess, s.cpu_z3, s.cpu_yices2) THEN s.matsat
           WHEN s.cpu_yices2 < Min(s.cpu_bitwuzla, s.cpu_cvc5, s.cpu_princess, s.cpu_z3, s.cpu_mathsat) THEN s.yices2
           ELSE 'unknown'
           END     AS status,
       CASE
           WHEN s.cpu_bitwuzla < Min(s.cpu_cvc5, s.cpu_princess, s.cpu_z3, s.cpu_mathsat, s.cpu_yices2)
               THEN s.cpu_bitwuzla
           WHEN s.cpu_cvc5 < Min(s.cpu_bitwuzla, s.cpu_princess, s.cpu_z3, s.cpu_mathsat, s.cpu_yices2)
               THEN s.cpu_cvc5
           WHEN s.cpu_princess < Min(s.cpu_bitwuzla, s.cpu_cvc5, s.cpu_z3, s.cpu_mathsat, s.cpu_yices2)
               THEN s.cpu_princess
           WHEN s.cpu_z3 < Min(s.cpu_bitwuzla, s.cpu_cvc5, s.cpu_princess, s.cpu_mathsat, s.cpu_yices2) THEN s.cpu_z3
           WHEN s.cpu_mathsat < Min(s.cpu_bitwuzla, s.cpu_cvc5, s.cpu_princess, s.cpu_z3, s.cpu_yices2)
               THEN s.cpu_mathsat
           WHEN s.cpu_yices2 < Min(s.cpu_bitwuzla, s.cpu_cvc5, s.cpu_princess, s.cpu_z3, s.cpu_mathsat)
               THEN s.cpu_yices2
           ELSE 300
           END     AS cpu
FROM (SELECT a.id,
             a.benchmark,
             a.gt_voting,
             CASE
                 WHEN b.status = 'true' OR b.status = 'false' THEN b.cpu
                 ELSE 600
                 END  AS cpu_bitwuzla,
             b.status AS bitwuzla,
             CASE
                 WHEN c.status = 'true' OR c.status = 'false' THEN c.cpu
                 ELSE 600
                 END  AS cpu_cvc5,
             c.status AS cvc5,
             CASE
                 WHEN d.status = 'true' OR d.status = 'false' THEN d.cpu
                 ELSE 600
                 END  AS cpu_princess,
             d.status AS princess,
             CASE
                 WHEN e.status = 'true' OR e.status = 'false' THEN e.cpu
                 ELSE 600
                 END  AS cpu_z3,
             e.status AS z3,
             CASE
                 WHEN f.status = 'true' OR f.status = 'false' THEN f.cpu
                 ELSE 600
                 END  AS cpu_yices2,
             f.status AS yices2,
             CASE
                 WHEN g.status = 'true' OR g.status = 'false' THEN g.cpu
                 ELSE 600
                 END  AS cpu_mathsat,
             g.status AS matsat
      FROM benchmarks_qf_sq a
               LEFT JOIN benchexec_qf_sq_bitwuzla b ON a.id = b.id
               LEFT JOIN benchexec_qf_sq_cvc5 c ON a.id = c.id
               LEFT JOIN benchexec_qf_sq_princess d ON a.id = d.id
               LEFT JOIN benchexec_qf_sq_z3 e ON a.id = e.id and e.pipeline = 3157
               LEFT JOIN benchexec_qf_sq_yices2 f ON a.id = f.id
               LEFT JOIN benchexec_qf_sq_mathsat g ON a.id = g.id) s;
"""

query = r"SELECT cpu from fastest2022_qf_sq a where ( status = 'true' or status = 'false') and (benchmark = 'QF_BV' or benchmark = 'QF_FP' or benchmark = 'QF_BVFP') ORDER BY CPU ASC;"
cursor.execute("DROP VIEW fastest2022_qf_sq")
cursor.execute(CREATE_FASTEST_VIEW)
with open(os.path.join(target_folder, "earliest.csv"), "w") as outf:
    cursor.execute(query)
    counter = 1
    while row := cursor.fetchone():
        print(f"{counter}, {row[0]}", file=outf)
        counter += 1
