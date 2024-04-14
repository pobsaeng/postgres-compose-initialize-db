#!/bin/bash

# Run the default PostgreSQL entrypoint script to initialize the database
/docker-entrypoint.sh postgres &

# Wait until the completion signal from schema.sql is received
while ! psql -U postgres -d postgres -c '\dt' >/dev/null 2>&1; do
    echo "Waiting for schema.sql to complete..."
    sleep 2
done

# Execute data.sql
echo "schema.sql completed. Proceeding to data.sql..."
psql -U postgres -d postgres -f /docker-entrypoint-initdb.d/data.sql

# Wait for the PostgreSQL server to shut down
wait
