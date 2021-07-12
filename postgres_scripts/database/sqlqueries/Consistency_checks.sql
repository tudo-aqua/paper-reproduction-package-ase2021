SELECT 'benchmarks' as table, benchmark, count(ID) as Total
from strings.benchmarks
group by benchmark
UNION ALL
SELECT 'cvc4' as table, runset, count(ID) as Total
from strings.cvc4
group by runset
UNION ALL
SELECT 'jcvc4' as table, runset, count(ID) as Total
from strings.jcvc4
group by runset
UNION ALL
SELECT 'jz3seq' as table, runset, count(ID) as Total
from strings.jz3seq
group by runset
UNION ALL
SELECT 'multi' as table, runset, count(ID) as Total
from strings.multi
group by runset
UNION ALL
SELECT 'multi_no_unsat_check' as table, runset, count(ID) as Total
from strings.multi_no_unsat_check
group by runset
UNION ALL
SELECT 'ostrich' as table, runset, count(ID) as Total
from strings.ostrich
group by runset
UNION ALL
SELECT 'princess' as table, runset, count(ID) as Total
from strings.princess
group by runset
UNION ALL
SELECT 'seq' as table, runset, count(ID) as Total
from strings.seq
group by runset
UNION ALL
SELECT 'z3str3' as table, runset, count(ID) as Total
from strings.z3str3
group by runset
UNION ALL
SELECT 'z3str4' as table, runset, count(ID) as Total
from strings.z3str4
group by runset
UNION ALL
SELECT 'trau' as table, runset, count(ID) as Total
from strings.trau
group by runset
order by benchmark;

SELECT 'benchmarks' as table, count(ID) as Total
from strings.benchmarks
UNION ALL
SELECT 'cvc4' as table, count(ID) as Total
from strings.cvc4
UNION ALL
SELECT 'jcvc4' as table, count(ID) as Total
from strings.jcvc4
UNION ALL
SELECT 'jz3seq' as table, count(ID) as Total
from strings.jz3seq
UNION ALL
SELECT 'multi' as table, count(ID) as Total
from strings.multi
UNION ALL
SELECT 'multi_no_unsat_check' as table, count(ID) as Total
from strings.multi_no_unsat_check
UNION ALL
SELECT 'ostrich' as table, count(ID) as Total
from strings.ostrich
UNION ALL
SELECT 'princess' as table, count(ID) as Total
from strings.princess
UNION ALL
SELECT 'seq' as table, count(ID) as Total
from strings.seq
UNION ALL
SELECT 'z3str3' as table, count(ID) as Total
from strings.z3str3
UNION ALL
SELECT 'z3str4' as table, count(ID) as Total
from strings.z3str4
UNION ALL
SELECT 'trau' as table, count(ID) as Total
from strings.trau;