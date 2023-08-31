#!/bin/bash
directory=$(dirname "$0")
prefix=${directory%/}
RETRIES=60
# PG_HOST=db
# PG_USER=postgres
# PG_DATABASE=postgres

# -h $PG_HOST -U $PG_USER -d $PG_DATABASE
until psql "$DATABASE_URL" -c "select 1" > /dev/null 2>&1 || [ $RETRIES -eq 0 ]; do
  echo "Waiting for postgres server, $((RETRIES--)) remaining attempts..."
  sleep 3
done

echo Done waiting for Postgres

psql "$DATABASE_URL" -c "SELECT 'public.census_ueis22'::regclass"
result=$?
echo "Table exists result: $result"

# An error occurrs if the table does not exist
if  [ $result -ne 0 ];
then
    echo "Data already loaded; dropping tables."
    for table in $(cat "${prefix}"/table-names.txt) ;
    do
        echo "Dropping $table"
        psql "$DATABASE_URL" -q -c "DROP TABLE IF EXISTS ${table} cascade;"
    done
    echo Loading historic data tables.

    for file in "${prefix}"/dumps/*;
    do
        echo Restoring "$file"
        psql "$DATABASE_URL" -q < "$file"
        sleep 0.1
    done
    psql "$DATABASE_URL" -q < "${prefix}"/create-views.sql
fi

# username=workbook.generator
# is_user_present=$(psql $DATABASE_URL -AXqtc "select exists(select 1 from public.auth_user where username='${username}')")

# echo "${username} exists check: $is_user_present"

# if [ $is_user_present == "f" ];
# then
#    pass=`cat /proc/sys/kernel/random/uuid | sed 's/[-]//g' | head -c 32; echo;`
#    psql $DATABASE_URL -q <<-EOSQL
#    INSERT INTO public.auth_user
#    ("password", last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined)
#    VALUES('${pass}', '2023-08-12 00:00:00.000', false, '${username}', 'Workbook', 'Generator', 'workbook.generator@test.fac.gov', false, false, '2023-08-12 00:00:00.000');
# EOSQL
#    echo "Created user ${username}"
# fi
