CREATE VIEW strings.BENCHEXEC_ALL_NUMERIC
            (ID, BENCHMARK, TASK_NAME, SUMMARY, ABC, CVC4, JCVC4CMD, JZ3SEQ, MULTI, OSTRICH, PRINCESS, SEQ, Z3STR3, Z3STR4) as
SELECT ID,
       BENCHMARK,
       TASK_NAME,
       (ABC +CVC4 +JCVC4CMD +JZ3SEQ + MULTI +OSTRICH + PRINCESS + SEQ +Z3STR3 + Z3STR4) as SUMMARY,
       ABC, CVC4, JCVC4CMD, JZ3SEQ, MULTI, OSTRICH, PRINCESS, SEQ, Z3STR3, Z3STR4 FROM (SELECT
    main.ID as ID, main.BENCHMARK as BENCHMARK, main.TASK_NAME as TASK_NAME,
       CASE UPPER(ABC.benchexecstatus)
           WHEN 'TRUE' THEN 100
           WHEN 'FALSE' THEN 1
           WHEN 'TIMEOUT' THEN 10000
           WHEN 'OUT OF MEMORY' THEN 1000000
           WHEN 'ERROR' THEN 100000000
           ELSE 0 --unknown
           END ABC,
       CASE UPPER(CVC4.benchexecstatus)
           WHEN 'TRUE' THEN 100
           WHEN 'FALSE' THEN 1
           WHEN 'TIMEOUT' THEN 10000
           WHEN 'OUT OF MEMORY' THEN 1000000
           WHEN 'ERROR' THEN 100000000
           ELSE 0 --unknown
           END CVC4,
       CASE UPPER(JCVC4CMD.benchexecstatus)
           WHEN 'TRUE' THEN 100
           WHEN 'FALSE' THEN 1
           WHEN 'TIMEOUT' THEN 10000
           WHEN 'OUT OF MEMORY' THEN 1000000
           WHEN 'ERROR' THEN 100000000
           ELSE 0 --unknown
           END JCVC4CMD,
       CASE UPPER(JZ3SEQ.benchexecstatus)
           WHEN 'TRUE' THEN 100
           WHEN 'FALSE' THEN 1
           WHEN 'TIMEOUT' THEN 10000
           WHEN 'OUT OF MEMORY' THEN 1000000
           WHEN 'ERROR' THEN 100000000
           ELSE 0 --unknown
           END JZ3SEQ,
       CASE UPPER(MULTI.benchexecstatus)
           WHEN 'TRUE' THEN 100
           WHEN 'FALSE' THEN 1
           WHEN 'TIMEOUT' THEN 10000
           WHEN 'OUT OF MEMORY' THEN 1000000
           WHEN 'ERROR' THEN 100000000
           ELSE 0 --unknown
           END MULTI,
       CASE UPPER(OSTRICH.benchexecstatus)
           WHEN 'TRUE' THEN 100
           WHEN 'FALSE' THEN 1
           WHEN 'TIMEOUT' THEN 10000
           WHEN 'OUT OF MEMORY' THEN 1000000
           WHEN 'ERROR' THEN 100000000
           ELSE 0 --unknown
           END OSTRICH,
       CASE UPPER(PRINCESS.benchexecstatus)
           WHEN 'TRUE' THEN 100
           WHEN 'FALSE' THEN 1
           WHEN 'TIMEOUT' THEN 10000
           WHEN 'OUT OF MEMORY' THEN 1000000
           WHEN 'ERROR' THEN 100000000
           ELSE 0 --unknown
           END PRINCESS,
       CASE UPPER(Z3SEQ.benchexecstatus)
           WHEN 'TRUE' THEN 100
           WHEN 'FALSE' THEN 1
           WHEN 'TIMEOUT' THEN 10000
           WHEN 'OUT OF MEMORY' THEN 1000000
           WHEN 'ERROR' THEN 100000000
           ELSE 0 --unknown
           END SEQ,
       CASE UPPER(Z3STR3.benchexecstatus)
           WHEN 'TRUE' THEN 100
           WHEN 'FALSE' THEN 1
           WHEN 'TIMEOUT' THEN 10000
           WHEN 'OUT OF MEMORY' THEN 1000000
           WHEN 'ERROR' THEN 100000000
           ELSE 0 --unknown
           END Z3STR3,
       CASE UPPER(Z3STR4.benchexecstatus)
           WHEN 'TRUE' THEN 100
           WHEN 'FALSE' THEN 1
           WHEN 'TIMEOUT' THEN 10000
           WHEN 'OUT OF MEMORY' THEN 1000000
           WHEN 'ERROR' THEN 100000000
           ELSE 0 --unknown
           END Z3STR4
from strings.benchmarks as main,
     strings.abc as ABC,
     strings.cvc4 as CVC4,
     strings.jcvc4cmd as JCVC4CMD,
     strings.jz3seq as JZ3SEQ,
     strings.multi as MULTI,
     strings.ostrich as OSTRICH,
     strings.princess as PRINCESS,
     strings.seq as Z3SEQ,
     strings.Z3str3 as Z3STR3,
     strings.z3str4 as Z3STR4
where main.ID = ABC.ID
  and main.ID = CVC4.ID
  and main.ID = JCVC4cmd.ID
  and main.ID = JZ3SEQ.ID
  and main.ID = MULTI.ID
  and main.ID = OSTRICH.ID
  and main.ID = PRINCESS.ID
  and main.ID = Z3SEQ.ID
  and main.ID = Z3STR3.ID
  and main.ID = Z3STR4.ID) as a;

