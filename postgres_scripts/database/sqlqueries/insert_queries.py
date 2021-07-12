from .table_queries import SCHEMA_PLACEHOLDER, SOLVER_PLACEHOLDER

INSERT_BENCHMARK = """INSERT INTO {}.BENCHMARKS
                   (ID,
                    BENCHMARK,
                    TASK_NAME,
                    ORIGINAL_NAME,
                    FILE_SHA)
                    VALUES (%s, %s, %s, %s, %s)
                    ON CONFLICT (ID) DO UPDATE SET
                    ID = EXCLUDED.ID,
                    BENCHMARK = EXCLUDED.BENCHMARK,
                    TASK_NAME = EXCLUDED.TASK_NAME,
                    ORIGINAL_NAME = EXCLUDED.ORIGINAL_NAME,
                    FILE_SHA = EXCLUDED.FILE_SHA""".format(
    SCHEMA_PLACEHOLDER
)

INSERT_LOG_ANALYSIS = """INSERT INTO {}.LOG_ANALYSIS_{}
                   (ID,
                    RESULT,
                    SATMODEL,
                    UNSATCORE,
                    RUNSET,
                    RUNTIME)
                    VALUES (%s, %s, %s, %s, %s, %s)
                    ON CONFLICT (ID, RUNTIME) DO UPDATE SET RESULT = excluded.result""".format(
    SCHEMA_PLACEHOLDER, SOLVER_PLACEHOLDER
)

INSERT_BENCHEXEC = """INSERT INTO {}.BENCHEXEC_{}
                   ( ID,
                     STATUS,
                     MEMORY,
                     WALL,
                     CPU,
                     RUNTIME)
                    VALUES (%s, %s, %s, %s, %s, %s)
                    ON CONFLICT (ID, RUNTIME) DO UPDATE SET STATUS = excluded.status""".format(
    SCHEMA_PLACEHOLDER, SOLVER_PLACEHOLDER
)
