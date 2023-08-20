#!/bin/bash
RETRIES=60
PG_HOST=db
PG_USER=postgres
PG_DATABASE=postgres

until psql -h $PG_HOST -U $PG_USER -d $PG_DATABASE -c "select 1" > /dev/null 2>&1 || [ $RETRIES -eq 0 ]; do
  echo "Waiting for postgres server, $((RETRIES--)) remaining attempts..."
  sleep 3
done

echo Done waiting for Postgres

psql -h $PG_HOST -U $PG_USER -d $PG_DATABASE -c "SELECT 'public.census_ueis22'::regclass"
result=$?
echo "Table exists result: $result"

# An error occurrs if the table does not exist
if  [ $result -ne 0 ];
then
    echo "Data already loaded; dropping tables."
    for table in `cat /table-names.txt` ;
    do 
        echo Dropping $table
        psql -q -h $PG_HOST -U $PG_USER -d $PG_DATABASE -c "DROP TABLE IF EXISTS ${table} cascade;"
    done
    echo Loading historic data tables.

    for file in `ls /dumps` ;
    do 
        echo Restoring $file
        psql -o /dev/null -q -h $PG_HOST -U $PG_USER -d $PG_DATABASE < /dumps/$file 
        sleep 0.1
    done
    psql -o /dev/null -q -h $PG_HOST -U $PG_USER -d $PG_DATABASE < /create-views.sql 
fi

# for table in `cat /table-names.txt` ;
# do
#     psql -h $PG_HOST -U $PG_USER -d $PG_DATABASE -c "select count(*) from \"${table}\""
# done