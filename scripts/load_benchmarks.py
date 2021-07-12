#!/usr/bin/env python3
import os
import threading
from argparse import ArgumentParser
from glob import glob
from os import path
from pathlib import Path
from subprocess import run, CalledProcessError
import sqlite3

conn = sqlite3.connect("../database/test.sqlite")

table_benchmarks = (
    "CREATE TABLE IF NOT EXISTS BENCHMARKS("
    "ID INTEGER PRIMARY KEY,"
    "BENCHMARK TEXT,"
    "TASK_NAME TEXT,"
    "ORIGINAL_NAME TEXT,"
    "FILE_SHA TEXT,"
    "GT_VOTING TEXT,"
    "GT_LIT TEXT);"
)
conn.execute(table_benchmarks)
conn.commit()
conn.close()

INSERT_BENCHMARK = """INSERT INTO BENCHMARKS
                   (ID,
                    BENCHMARK,
                    TASK_NAME,
                    ORIGINAL_NAME,
                    FILE_SHA)
                    VALUES (?, ?, ?, ?, ?)
                    ON CONFLICT (ID) DO UPDATE SET
                    ID = EXCLUDED.ID,
                    BENCHMARK = EXCLUDED.BENCHMARK,
                    TASK_NAME = EXCLUDED.TASK_NAME,
                    ORIGINAL_NAME = EXCLUDED.ORIGINAL_NAME,
                    FILE_SHA = EXCLUDED.FILE_SHA"""


def call_sha1sum(file, cwd):
    result = run(["sha1sum", file], cwd=cwd, capture_output=True)
    try:
        result.check_returncode()
        sha = result.stdout.decode().split(" ")[0]
        return sha
    except CalledProcessError:
        print("sha1sum error on: ", file)
        return "-1"


class ImporterThread(threading.Thread):
    def __init__(self, benchmark, folder):
        threading.Thread.__init__(self)
        self.benchmark = benchmark
        self.folder = folder

    def insert(self, rows):
        # print("inserting:", schema, rows)
        self.conn.executemany(INSERT_BENCHMARK, rows)
        self.conn.commit()

    def process_files(self, glob_string):
        rows = []
        if self.benchmark == "operator-statistics":
            return
        for benchmark_file in glob(glob_string, recursive=True):
            p = Path(benchmark_file)
            bid, orig_base = p.name.split("_", 1)
            orig_name = str(Path.joinpath(p.parent, orig_base))
            sha1sum = call_sha1sum(benchmark_file, self.folder)
            rows.append((bid, self.benchmark, benchmark_file, orig_name, sha1sum))
        # print(glob_string, rows)
        if len(rows):
            self.insert(rows)

    def process_benchmark(self):
        self.process_files(f"{self.benchmark}/**/*.smt*")
        # self.process_files(f"{self.benchmark}/**/*.smt")

    def run(self):
        self.conn = sqlite3.connect("../database/test.sqlite")
        self.process_benchmark()


def scan_folder(folder):
    old_cwd = os.getcwd()
    os.chdir(folder)
    benchmarks = [x for x in os.listdir(".") if path.isdir(x)]
    print("found benchmarks:", benchmarks)
    workers = []
    for benchmark in benchmarks:
        print("processing:", benchmark)
        worker = ImporterThread(benchmark, folder)
        worker.start()
        workers.append(worker)
    for worker in workers:
        worker.join()
    os.chdir(old_cwd)


if __name__ == "__main__":
    parser = ArgumentParser()
    parser.add_argument("-f", "--folder", required=True)
    args = vars(parser.parse_args())
    abs_path = path.abspath(args["folder"])
    scan_folder(abs_path)
