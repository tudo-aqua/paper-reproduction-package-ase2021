CREATE VIEW strings.SOLVERLOGS_MODEL_COUNTER
            (ID, ABC, CVC4, JCVC4CMD, JZ3SEQ, MULTI, MULTI_NO, OSTRICH, PRINCESS, SEQ, Z3STR3, Z3STR4, SUMMARY) AS
SELECT ID,
       NABC,
       NCVC4,
       NJCVC4CMD,
       NJZ3SEQ,
       NMULTI,
       NMULTI_no,
       NOSTRICH,
       NPRINCESS,
       NSEQ,
       NZ3STR3,
       NZ3STR4,
       case
           WHEN (NABC + NCVC4 + NJCVC4CMD + NJZ3SEQ + NMULTI + NMULTI_no + NOSTRICH + NPRINCESS + NSEQ + NZ3STR3 + NZ3STR4) > 0 THEN 1
           ELSE 0
           END
FROM (
         SELECT ID,
                CASE WHEN abc_logstatus = 'true' and abc_satmodel = 'true' THEN 1
                    ELSE 0 --unknown
                    END AS NABC,
                CASE
                    WHEN cvc4_logstatus = 'true' and cvc4_satmodel = 'true' THEN 1
                    ELSE 0 --unknown
                    END AS NCVC4,
                CASE
                    WHEN jcvc4cmd_logstatus = 'true' and jcvc4cmd_satmodel = 'true' THEN 1
                    ELSE 0 --unknown
                    END AS NJCVC4CMD,
                CASE
                    WHEN jz3seq_logstatus = 'true' and jz3seq_satmodel = 'true' THEN 1
                    ELSE 0 --unknown
                    END AS NJZ3SEQ,
                CASE
                    WHEN multi_logstatus = 'true' and multi_satmodel = 'true' THEN 1
                    ELSE 0 --unknown
                    END AS NMULTI,
                CASE
                    WHEN multi_no_unsat_check_logstatus = 'true' and multi_no_unsat_check_satmodel = 'true' THEN 1
                    ELSE 0 --unknown
                    END AS NMULTI_no,
                CASE
                    WHEN ostrich_logstatus = 'true' and ostrich_satmodel = 'true' THEN 1
                    ELSE 0 --unknown
                    END AS NOSTRICH,
                CASE
                    WHEN princess_logstatus = 'true' and princess_satmodel = 'true' THEN 1
                    ELSE 0 --unknown
                    END AS NPRINCESS,
                CASE
                    WHEN seq_logstatus = 'true' and seq_satmodel = 'true' THEN 1
                    ELSE 0 --unknown
                    END AS NSEQ,
                CASE
                    WHEN z3str3_logstatus = 'true' and z3str3_satmodel = 'true' THEN 1
                    ELSE 0 --unknown
                    END AS NZ3STR3,
                CASE
                    WHEN z3str4_logstatus = 'true' and z3str4_satmodel = 'true' THEN 1
                    ELSE 0 --unknown
                    END as NZ3STR4
         from strings.solverlogs) as a;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA strings to aqua;