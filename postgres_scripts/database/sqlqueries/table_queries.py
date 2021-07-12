SCHEMA_PLACEHOLDER = "XXSCHEMAXX"
SOLVER_PLACEHOLDER = "XXSOLVERXX"
STRING_SCHEMA = "STRINGS"
Q_SQ_SCHEMA = "Q_SQ"
QF_SQ_SCHEMA = "QF_SQ"

SCHEMAS = [STRING_SCHEMA, Q_SQ_SCHEMA, QF_SQ_SCHEMA]
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
    "TRAU",
]

BENCHMARKS = {
    "appscan": "Apspscan",
    "banditfuzz": "BanditFuzz",
    "cashewsuite": "Cashew",
    "light": "Trau Light",
    "pisa": "Pisa",
    "jdart": "SVCOMP",
    "woorpje": "WWE",
    "joacosuite": "Joaco",
    "Kaluza": "Kaluza",
    "PyEx": "PyEx",
    "stringfuzz": "StringFuzz",
    "Leetcode": "Leetcode",
    "strangersuite": "Stranger",
    "z3_regression": "Z3str3",
    "nornbenchmarks": "Norn",
    "kauslersuite": "Kausler",
    "slothtests": "Sloth",
}

CREATE_SCHEMA = f"CREATE SCHEMA IF NOT EXISTS {SCHEMA_PLACEHOLDER} AUTHORIZATION AQUA;"

CREATE_LOG_FOR_SOLVER_TABLE = f"""CREATE TABLE IF NOT EXISTS {SCHEMA_PLACEHOLDER}.LOG_ANALYSIS_{SOLVER_PLACEHOLDER}(
    ID INTEGER,
    RESULT TEXT,
    SATMODEL TEXT,
    UNSATCORE TEXT,
    RUNSET TEXT,
    RUNTIME timestamp,
    PRIMARY KEY (ID, RUNTIME)
);
"""

CREATE_BENCHEXEC_FOR_SOLVER_TABLE = f"""CREATE TABLE IF NOT EXISTS {SCHEMA_PLACEHOLDER}.BENCHEXEC_{SOLVER_PLACEHOLDER}(
    ID INTEGER,
    STATUS TEXT,
    MEMORY REAL,
    WALL REAL,
    CPU REAL,
    RUNTIME timestamp,
    PRIMARY KEY (ID, RUNTIME)
);
"""

CREATE_OPERATOR_FEATURE_TABLE = f"""CREATE TABLE IF NOT EXISTS  {SCHEMA_PLACEHOLDER}.OPERATOR_FEATURES (
ID INTEGER PRIMARY KEY,
CONTAINS INT DEFAULT 0,
LEN INT DEFAULT 0,
UMINUS INT DEFAULT 0,
DIV INT DEFAULT 0,
ITE INT DEFAULT 0,
KLEENESTAR INT DEFAULT 0,
STR_TO_INT INT DEFAULT 0,
GE INT DEFAULT 0,
LE INT DEFAULT 0,
ASSERT INT DEFAULT 0,
ALLCHAR INT DEFAULT 0,
KLEENEPLUS INT DEFAULT 0,
CAST_OP INT DEFAULT 0,
SUBSTR INT DEFAULT 0,
EMPTYSTR INT DEFAULT 0,
INT_TO_STR INT DEFAULT 0,
RE_CONCAT INT DEFAULT 0,
PLUS INT DEFAULT 0,
UPPER INT DEFAULT 0,
INDEFOX INT DEFAULT 0,
LT INT DEFAULT 0,
REPLACE INT DEFAULT 0,
REPLACEALL INT DEFAULT 0,
MULT INT DEFAULT 0,
NOT_OP INT DEFAULT 0,
PREFIXOF INT DEFAULT 0,
GT INT DEFAULT 0,
IN_RE INT DEFAULT 0,
RANGE INT DEFAULT 0,
LOWER INT DEFAULT 0,
IMPLY INT DEFAULT 0,
OR_OP INT DEFAULT 0,
RE_UNION INT DEFAULT 0,
SUFFIXOF INT DEFAULT 0,
AT INT DEFAULT 0,
AND_OP INT DEFAULT 0,
STR_CONCAT INT DEFAULT 0,
EQUALS INT DEFAULT 0,
MINUS INT DEFAULT 0,
STR_EQ INT DEFAULT 0,
VARS INT DEFAULT 0,
STR_TO_RE INT DEFAULT 0,
INTER INT DEFAULT 0,
EXIST INT DEFAULT 0,
FORALL INT DEFAULT 0,
MOD INT DEFAULT 0,
LET_OP INT DEFAULT 0
    );"""

CREATE_BENCHARKS_TABLE = f"""CREATE TABLE IF NOT EXISTS {SCHEMA_PLACEHOLDER}.BENCHMARKS(
    ID INTEGER PRIMARY KEY,
    BENCHMARK TEXT,
    TASK_NAME TEXT,
    ORIGINAL_NAME TEXT,
    FILE_SHA TEXT,
    GT_VOTING TEXT,
    GT_LIT TEXT);"""

CREATE_TABLES = [
    CREATE_BENCHARKS_TABLE,
    CREATE_OPERATOR_FEATURE_TABLE,
]

GRANT_ACCESS = (
    f"GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA {SCHEMA_PLACEHOLDER} TO AQUA"
)

# VIEWS ################################################################

CREATE_MOST_RECENT_RESULT_VIEW = f"""CREATE MATERIALIZED VIEW {SCHEMA_PLACEHOLDER}.{SOLVER_PLACEHOLDER} AS SELECT A.ID,
                            runset,
                            status as BENCHEXECSTATUS, 
                            result as LOGSTATUS, 
                            unsatcore,
                            satmodel,
                            memory, 
                            wall, 
                            cpu, 
                            A.runtime as benchexec_runtime, 
                            B.runtime as log_runtime
                        FROM
                            (SELECT ID, status, memory, wall, cpu, runtime FROM 
                                (SELECT ID, status, memory, wall, cpu, runtime, rank() OVER (PARTITION BY ID ORDER BY runtime DESC ) as rank 
                                    FROM {SCHEMA_PLACEHOLDER}.benchexec_{SOLVER_PLACEHOLDER}) as A WHERE A.rank = 1) as A,
                            (SELECT ID, result, satmodel, unsatcore, runset, runtime FROM
                                (SELECT *, rank() OVER(PARTITION BY ID ORDER BY runtime DESC) as rank
                                    FROM {SCHEMA_PLACEHOLDER}.log_analysis_{SOLVER_PLACEHOLDER}) as B where B.rank = 1) as B where A.ID = B.ID WITH DATA;"""
