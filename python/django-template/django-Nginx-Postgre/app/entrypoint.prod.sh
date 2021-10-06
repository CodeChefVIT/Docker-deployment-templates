#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for PostgresSQL to start..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started successfully"
fi

exec "$@"
