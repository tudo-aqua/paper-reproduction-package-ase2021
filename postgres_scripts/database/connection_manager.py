import psycopg2
import sys

from .database_config import DataBaseConfig
from psycopg2 import OperationalError

class ConnectionTimeout(Exception):
    pass

def get_connection(config, timeout=5):
    try:
        return psycopg2.connect(dbname=config.database, host=config.host, port=config.port, user=config.user,
                     password=config.password, connect_timeout=timeout)
    except OperationalError as e:
        if "timeout" in str(e):
            raise ConnectionTimeout("The attempt to connect with the database timed out. Is it behind a VPN?")
        else:
            raise e