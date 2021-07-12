COMPUTE_GT_VOTING = """INSERT INTO strings.benchmarks (ID, gt_voting) SELECT ID,
       case WHEN multi_logstatus = 'true' and multi_confirmed = 'confirmed' THEN 'true'
           WHEN multi_logstatus = 'false' and multi_confirmed = 'confirmed' THEN 'false'
           WHEN jz3seq_logstatus = 'true' and sat_confirmed = 'confirmed' THEN 'true'
           WHEN jcvc4_logstatus = 'true' and sat_confirmed = 'confirmed' THEN 'true'
           When TOTAL % 100 > TOTAL / 100 THEN 'true'
           WHEN TOTAL % 100 < TOTAL /100 THEN 'false'
           WHEN total % 100 = total / 100 THEN 'tie'
           else 'unknown' END as gt_voting FROM (
SELECT A.ID, CASE
           WHEN multi_satmodel = 'true' or multi_unsatcore = 'true' THEN 'confirmed'
           ELSE 'unknown' END as multi_confirmed,
       multi_logstatus,
       CASE
           When jcvc4_satmodel = 'true' or jz3seq_satmodel = 'true' THEN 'confirmed' ELSE'unknown' END as sat_confirmed,
       jcvc4_logstatus, jz3seq_logstatus, (cvc4_numeric +  ABC_numeric + ostrich_numeric + seq_numeric + z3str3_numeric + z3str4_numeric + princess_numeric) as total
       from (SELECT ID,
                    CASE WHEN CVC4_logstatus = 'true' THEN 1 WHEN  CVC4_logstatus = 'false' THEN 100 ELSE 0 END as CVC4_numeric,
CASE WHEN ABC_logstatus = 'true' THEN 1 WHEN  ABC_logstatus = 'false' THEN 100 ELSE 0 END as ABC_numeric,
CASE WHEN OSTRICH_logstatus = 'true' THEN 1 WHEN  OSTRICH_logstatus = 'false' THEN 100 ELSE 0 END as OSTRICH_numeric,
CASE WHEN MULTI_logstatus = 'true' THEN 1 WHEN  MULTI_logstatus = 'false' THEN 100 ELSE 0 END as MULTI_numeric,
CASE WHEN MULTI_NO_UNSAT_CHECK_logstatus = 'true' THEN 1 WHEN  MULTI_NO_UNSAT_CHECK_logstatus = 'false' THEN 100 ELSE 0 END as MULTI_NO_UNSAT_CHECK_numeric,
CASE WHEN JCVC4_logstatus = 'true' THEN 1 WHEN  JCVC4_logstatus = 'false' THEN 100 ELSE 0 END as JCVC4_numeric,
CASE WHEN JZ3SEQ_logstatus = 'true' THEN 1 WHEN  JZ3SEQ_logstatus = 'false' THEN 100 ELSE 0 END as JZ3SEQ_numeric,
CASE WHEN SEQ_logstatus = 'true' THEN 1 WHEN  SEQ_logstatus = 'false' THEN 100 ELSE 0 END as SEQ_numeric,
CASE WHEN Z3STR3_logstatus = 'true' THEN 1 WHEN  Z3STR3_logstatus = 'false' THEN 100 ELSE 0 END as Z3STR3_numeric,
CASE WHEN Z3STR4_logstatus = 'true' THEN 1 WHEN  Z3STR4_logstatus = 'false' THEN 100 ELSE 0 END as Z3STR4_numeric,
CASE WHEN PRINCESS_logstatus = 'true' THEN 1 WHEN  PRINCESS_logstatus = 'false' THEN 100 ELSE 0 END as PRINCESS_numeric,
CASE WHEN TRAU_logstatus = 'true' THEN 1 WHEN  TRAU_logstatus = 'false' THEN 100 ELSE 0 END as TRAU_numeric
                    FROM strings.solverlogs) as A
, strings.solverlogs as B WHERE A.ID = B.ID) as A ON CONFLICT (ID) DO UPDATE set gt_voting = excluded.gt_voting;"""
