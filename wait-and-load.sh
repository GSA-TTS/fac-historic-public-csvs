#!/bin/bash

RETRIES=60
PG_HOST=db
PG_USER=postgres
PG_DATABASE=postgres

until psql -h $PG_HOST -U $PG_USER -d $PG_DATABASE -c "select 1" > /dev/null 2>&1 || [ $RETRIES -eq 0 ]; do
  sleep 3
  echo "Waiting for postgres server, $((RETRIES--)) remaining attempts..."
  sleep 3
done

echo DONE WAITING

for file in `ls /dumps` ;
do 
    echo Restoring $file
    # 2>&1 /dev/null
    psql -o /dev/null -q -h $PG_HOST -U $PG_USER -d $PG_DATABASE < /dumps/$file 
done

# for table in `cat /table-names.txt` ;
# do
#     psql -h $PG_HOST -U $PG_USER -d $PG_DATABASE -c "select count(*) from \"${table}\""
# done