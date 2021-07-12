import configparser
from argparse import ArgumentParser
from os.path import expanduser

from database import *

DEFAULT_LOCATION = "~/.smt_statistic_configs"


class DataBaseConfig:
    def __init__(self, host, port, user, password, database):
        self.host = host
        self.port = int(port)
        self.user = user
        self.password = password
        self.database = database


def write_base_config(location=DEFAULT_LOCATION):
    config = configparser.ConfigParser()
    config.add_section(POSTGRES_DB)
    config.set(POSTGRES_DB, HOST, "haunt.cs.tu-dortmund.de")
    config.set(POSTGRES_DB, PORT, "5432")
    config.set(POSTGRES_DB, USER, "inserter")
    config.set(POSTGRES_DB, PASS, "secret123")
    config.set(POSTGRES_DB, DATABASE, "smtproblems")
    with open(expanduser(location), "w") as out:
        config.write(out)


def load_config(location=DEFAULT_LOCATION):
    config = configparser.ConfigParser()
    config.read(expanduser(location))
    host = config.get(POSTGRES_DB, HOST)
    port = config.get(POSTGRES_DB, PORT)
    user = config.get(POSTGRES_DB, USER)
    password = config.get(POSTGRES_DB, PASS)
    database = config.get(POSTGRES_DB, DATABASE)
    return DataBaseConfig(host, port, user, password, database)


def table_generator_path(location=DEFAULT_LOCATION):
    config = configparser.ConfigParser()
    config.read(expanduser(location))
    return config.get(BINARIES, TABLE_GEN)


if __name__ == "__main__":
    parser = ArgumentParser()
    parser.add_argument("-o", "--output")
    args = vars(parser.parse_args())
    location = DEFAULT_LOCATION
    if "--output" in args:
        location = args["--output"]
    write_base_config(location)
