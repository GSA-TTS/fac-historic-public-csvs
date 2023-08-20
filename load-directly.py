import argparse
from collections import defaultdict
import os
from pathlib import Path
import pandas as pd
import sqlalchemy
import glob

import csv

import io

import logging

parser = argparse.ArgumentParser()
dtypes: defaultdict = defaultdict(lambda: str)

logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.WARNING)
loggers = [logging.getLogger(name) for name in logging.root.manager.loggerDict]
for logger in loggers:
    logger.setLevel(logging.WARNING)


def make_tablename(filename):
    return f"census_" + Path(filename).stem

def main():
    parser.add_argument("--path", type=str, required=True)

    args = parser.parse_args()
    print(args)
    engine = sqlalchemy.create_engine(
        "postgresql://postgres@localhost/postgres"
    )
    
    files = glob.glob(f'{args.path}/*.txt')

    for txtfile in files:
        connection = engine.raw_connection()
        cursor = connection.cursor()
        tablename = Path(txtfile).stem
        print(f'Dropping {tablename}')
        cursor.execute(f"DROP TABLE IF EXISTS IF EXISTS {make_tablename(tablename)}")

    for txtfile in files:
        tablename = Path(txtfile).stem
        print(f'Loading {txtfile} / {make_tablename(tablename)}')
        #file = open(f"{txtfile}", "rb")
        #file_bytes = file.read()
        #file.close()
        for chunk in pd.read_csv(
            #io.BytesIO(file_bytes),
            txtfile,
            delimiter="|",
            dtype=dtypes,
            on_bad_lines="skip",
            engine="python",
            quoting=csv.QUOTE_NONE,
            encoding="utf-8",
            chunksize=10000
        ):
            chunk.to_sql(name=make_tablename(tablename), 
                        if_exists='append', 
                         con=engine)

if __name__ in "__main__":
    main()
