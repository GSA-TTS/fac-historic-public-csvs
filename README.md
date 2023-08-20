# Public historic Census FAC data

This data is publicly distributed by Census as part of its operation of the Federal Audit Clearinghouse.

It is converted to PostgreSQL here for use in a data/API pilot.

## Process

1. Raw `.txt` files were pulled from Census.
2. The program `line-by-line.py` was run on those files, (lossily) removing any non-ASCII characters from the dataset.
3. The program `load-directly.py` was run against a local Postgres stack to load the CSVs as tables.


### Step 1: Download of files

What it says. These were pulled down year-by-year as zip archives of pipe-delimited CSVs. They were then placed in a set of directories named for the year.

```
by-year/
  | 2016
  | 2017
  | 2018
  | ...
  | 2022
```

### Step 2: `line-by-line`

Our experience is that the public Census files are not generated with any consistency regarding character sets or encodings. As a result, the files alternately identify as `CP-1252`, `latin-1`, or cannot be identified at all. Many tools cannot read these files reliably.

We walk the files character-by-character, and throw out anything not within the range of ASCII text and punctuation. We're aware this is lossy, but we are engaged in a data pilot. Further, we could not find a more reliable way to process this data.

```
for i in `ls by-year` ; 
    do echo $i ; 
    python line-by-line.py --input by-year/$i --output cleaned/$i ; 
done
```

### Step 3: `load-directly`

This uses a chunked load into Postgres tables via the Pandas `df.to_sql()` method.

```
for i in `ls by-year` ; 
    do echo $i ; 
    python load-directly.py --path cleaned/$i ; 
done
```

### Step 4: Archive

The source data for the above was tar'd, gzip'd, and split.

```
split -b 10M by-year.tar.gz by-year/by-year.
split -b 10M cleaned.tar.gz cleaned/cleaned.
```

This is for reconstruction. `cat` back to a `.tar.gz` and decompress.

### Step 5: Export

```
mkdir -p dumps
for table in `cat table-names.txt`; 
do 
    echo Dumping $table
    pg_dump -h localhost -U postgres -t $table postgres > dumps/$table.dump
done
```

### Step 6: Split the dumps

To store them in GH, we need them to be smaller. They're compressed, then split.

```
tar cvzf dumps.tar.gz dumps/
rm -rf dumps
mkdir dumps
split -b 40M dumps.tar.gz dumps/dump.
```

### Step 6: Container build

```
docker build -t fac/wait-and-load .
```

### Step 7: Include in compose

This container is designed to run as part of the local and deployed container stack for the FAC. It will not do anything useful on its own.


