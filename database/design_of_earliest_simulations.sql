CREATE VIEW fastest(id, benchmark, gt, benchexecstatus, cpu) as
SELECT s.id,
       s.benchmark,
       s.gt_voting AS gt,
       CASE
           WHEN s.cpu_abc < MIN(s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4)
               THEN s.abc
           WHEN s.cpu_cvc5 < MIN(s.cpu_abc, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4)
               THEN s.cvc5
           WHEN s.cpu_ostrich <
                MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_jz3seq, s.cpu_princess, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4)
               THEN s.ostrich
           WHEN s.cpu_princess < MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4)
               THEN s.princess
           WHEN s.cpu_seq < MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_z3str3, s.cpu_z3str4)
               THEN s.seq
           WHEN s.cpu_z3str3 < MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str4)
               THEN s.z3str3
           WHEN s.cpu_z3str4 < MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3)
               THEN s.z3str4
           ELSE 'unknown' 
           END     AS benchexecstatus,
       CASE
           WHEN s.cpu_abc < MIN(s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4)
               THEN s.cpu_abc
           WHEN s.cpu_cvc5 < MIN(s.cpu_abc, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4)
               THEN s.cpu_cvc5
           WHEN s.cpu_ostrich <
                MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_jz3seq, s.cpu_princess, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4)
               THEN s.cpu_ostrich
           WHEN s.cpu_princess < MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4)
               THEN s.cpu_princess
           WHEN s.cpu_seq < MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_z3str3, s.cpu_z3str4)
               THEN s.cpu_seq
           WHEN s.cpu_z3str3 < MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str4)
               THEN s.cpu_z3str3
           WHEN s.cpu_z3str4 < MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3)
               THEN s.cpu_z3str4
           ELSE 300 
           END     AS cpu
FROM (SELECT a.id,
             a.benchmark,
             a.gt_voting,
             CASE
                 WHEN b.benchexecstatus = 'true'  OR b.benchexecstatus = 'false'  THEN b.cpu
                 ELSE 600 
                 END           AS cpu_abc,
             b.benchexecstatus AS abc,
             CASE
                 WHEN c.benchexecstatus = 'true'  OR c.benchexecstatus = 'false'  THEN c.cpu
                 ELSE 600 
                 END           AS cpu_cvc5,
             c.benchexecstatus AS cvc5,
             CASE
                 WHEN g.benchexecstatus = 'true'  OR g.benchexecstatus = 'false'  THEN g.cpu
                 ELSE 600 
                 END           AS cpu_multi,
             g.benchexecstatus AS multi,
             CASE
                 WHEN h.benchexecstatus = 'true'  OR h.benchexecstatus = 'false'  THEN h.cpu
                 ELSE 600 
                 END           AS cpu_multi_no,
             h.benchexecstatus AS multi_no,
             CASE
                 WHEN f.benchexecstatus = 'true'  OR f.benchexecstatus = 'false'  THEN f.cpu
                 ELSE 600 
                 END           AS cpu_jz3seq,
             f.benchexecstatus AS jz3seq,
             CASE
                 WHEN k.benchexecstatus = 'true'  OR k.benchexecstatus = 'false'  THEN k.cpu
                 ELSE 600 
                 END           AS cpu_seq,
             k.benchexecstatus AS seq,
             CASE
                 WHEN m.benchexecstatus = 'true'  OR m.benchexecstatus = 'false'  THEN m.cpu
                 ELSE 600 
                 END           AS cpu_z3str3,
             m.benchexecstatus AS z3str3,
             CASE
                 WHEN n.benchexecstatus = 'true'  OR n.benchexecstatus = 'false'  THEN n.cpu
                 ELSE 600 
                 END           AS cpu_z3str4,
             n.benchexecstatus AS z3str4,
             CASE
                 WHEN i.benchexecstatus = 'true'  OR i.benchexecstatus = 'false'  THEN i.cpu
                 ELSE 600 
                 END           AS cpu_ostrich,
             i.benchexecstatus AS ostrich,
             CASE
                 WHEN j.benchexecstatus = 'true'  OR j.benchexecstatus = 'false'  THEN j.cpu
                 ELSE 600
                 END           AS cpu_princess,
             j.benchexecstatus AS princess
      FROM  benchmarks a
               LEFT JOIN  abc b ON a.id = b.id
               LEFT JOIN  cvc5 c ON a.id = c.id
               LEFT JOIN  jz3seq f ON a.id = f.id
               LEFT JOIN  multi g ON a.id = g.id
               LEFT JOIN  multi_no_unsat_check h ON a.id = h.id
               LEFT JOIN  ostrich i ON a.id = i.id
               LEFT JOIN  princess j ON a.id = j.id
               LEFT JOIN  seq k ON a.id = k.id
               LEFT JOIN  z3str3 m ON a.id = m.id
               LEFT JOIN  z3str4 n ON a.id = n.id) s
/* fastest(id,benchmark,gt,benchexecstatus,cpu) */;


CREATE VIEW fastest_no_abc_z3str4(id, benchmark, gt, benchexecstatus, cpu) as
SELECT t.id,
       t.benchmark,
       t.gt,
       CASE
           WHEN t.abc = 'true' OR t.z3str4 = 'true' THEN t.benchexecstatus2_fastest
           ELSE t.benchexecstatus_fastest
           END AS benchexecstatus,
       CASE
           WHEN t.abc = 'true' OR t.z3str4 = 'true' THEN t.cputime2
           ELSE t.cputime
           END AS cpu
FROM (SELECT s.id,
             s.benchmark,
             s.gt_voting AS gt,
             s.abc,
             s.z3str4,
             CASE
                 WHEN s.cpu_abc <
                      MIN(s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4) THEN s.abc
                 WHEN s.cpu_cvc5 <
                      MIN(s.cpu_abc, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4) THEN s.cvc5
                 WHEN s.cpu_ostrich <
                      MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_princess, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4) THEN s.ostrich
                 WHEN s.cpu_princess <
                      MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4) THEN s.princess
                 WHEN s.cpu_seq <
                      MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_z3str3, s.cpu_z3str4) THEN s.seq
                 WHEN s.cpu_z3str3 <
                      MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str4) THEN s.z3str3
                 WHEN s.cpu_z3str4 <
                      MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3) THEN s.z3str4
                 ELSE 'unknown'
                 END     AS benchexecstatus_fastest,
             CASE
                 WHEN s.cpu_cvc5 < MIN(s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3) THEN s.cvc5
                 WHEN s.cpu_ostrich < MIN(s.cpu_cvc5, s.cpu_princess, s.cpu_seq, s.cpu_z3str3) THEN s.ostrich
                 WHEN s.cpu_princess < MIN(s.cpu_cvc5, s.cpu_ostrich, s.cpu_seq, s.cpu_z3str3) THEN s.princess
                 WHEN s.cpu_seq < MIN(s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_z3str3) THEN s.seq
                 WHEN s.cpu_z3str3 < MIN(s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq) THEN s.z3str3
                 ELSE 'unknown'
                 END     AS benchexecstatus2_fastest,
             CASE
                 WHEN s.cpu_abc <
                      MIN(s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4)
                     THEN s.cpu_abc
                 WHEN s.cpu_cvc5 <
                      MIN(s.cpu_abc, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4)
                     THEN s.cpu_cvc5
                 WHEN s.cpu_ostrich <
                      MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_princess, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4)
                     THEN s.cpu_ostrich
                 WHEN s.cpu_princess <
                      MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_seq, s.cpu_z3str3, s.cpu_z3str4)
                     THEN s.cpu_princess
                 WHEN s.cpu_seq <
                      MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_z3str3, s.cpu_z3str4)
                     THEN s.cpu_seq
                 WHEN s.cpu_z3str3 <
                      MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str4)
                     THEN s.cpu_z3str3
                 WHEN s.cpu_z3str4 <
                      MIN(s.cpu_abc, s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3)
                     THEN s.cpu_z3str4
                 ELSE 300
                 END     AS cputime,
             CASE
                 WHEN s.cpu_cvc5 < MIN(s.cpu_ostrich, s.cpu_princess, s.cpu_seq, s.cpu_z3str3) THEN s.cpu_cvc5
                 WHEN s.cpu_ostrich < MIN(s.cpu_cvc5, s.cpu_princess, s.cpu_seq, s.cpu_z3str3) THEN s.cpu_ostrich
                 WHEN s.cpu_princess < MIN(s.cpu_cvc5, s.cpu_ostrich, s.cpu_seq, s.cpu_z3str3) THEN s.cpu_princess
                 WHEN s.cpu_seq < MIN(s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_z3str3) THEN s.cpu_seq
                 WHEN s.cpu_z3str3 < MIN(s.cpu_cvc5, s.cpu_ostrich, s.cpu_princess, s.cpu_seq) THEN s.cpu_z3str3
                 ELSE 300
                 END     AS cputime2
      FROM (SELECT a.id,
                   a.benchmark,
                   a.gt_voting,
                   CASE
                       WHEN b.benchexecstatus = 'true' OR b.benchexecstatus = 'false' THEN b.cpu
                       ELSE 600
                       END           AS cpu_abc,
                   b.benchexecstatus AS abc,
                   CASE
                       WHEN c.benchexecstatus = 'true' OR c.benchexecstatus = 'false' THEN c.cpu
                       ELSE 600
                       END           AS cpu_cvc5,
                   c.benchexecstatus AS cvc5,
                   CASE
                       WHEN k.benchexecstatus = 'true' OR k.benchexecstatus = 'false' THEN k.cpu
                       ELSE 600
                       END           AS cpu_seq,
                   k.benchexecstatus AS seq,
                   CASE
                       WHEN m.benchexecstatus = 'true' OR m.benchexecstatus = 'false' THEN m.cpu
                       ELSE 600
                       END           AS cpu_z3str3,
                   m.benchexecstatus AS z3str3,
                   CASE
                       WHEN n.benchexecstatus = 'true' OR n.benchexecstatus = 'false' THEN n.cpu
                       ELSE 600
                       END           AS cpu_z3str4,
                   n.benchexecstatus AS z3str4,
                   CASE
                       WHEN i.benchexecstatus = 'true' OR i.benchexecstatus = 'false' THEN i.cpu
                       ELSE 600
                       END           AS cpu_ostrich,
                   i.benchexecstatus AS ostrich,
                   CASE
                       WHEN j.benchexecstatus = 'true' OR j.benchexecstatus = 'false' THEN j.cpu
                       ELSE 600
                       END           AS cpu_princess,
                   j.benchexecstatus AS princess
            FROM benchmarks a
                     LEFT JOIN abc b ON a.id = b.id
                     LEFT JOIN cvc5 c ON a.id = c.id
                     LEFT JOIN ostrich i ON a.id = i.id
                     LEFT JOIN princess j ON a.id = j.id
                     LEFT JOIN seq k ON a.id = k.id
                     LEFT JOIN z3str3 m ON a.id = m.id
                     LEFT JOIN z3str4 n ON a.id = n.id) s) t
/* fastest_no_abc_z3str4(id,benchmark,gt,benchexecstatus,cpu) */;


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
