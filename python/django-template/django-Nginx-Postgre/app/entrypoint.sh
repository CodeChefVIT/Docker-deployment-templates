#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for PostgresSQL to start..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started successfully"
fi

# Removes all data from the database
python manage.py flush --no-input

# Migrates the database
python manage.py migrate

exec "$@"
