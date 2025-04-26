#!/bin/bash
set -e

# Ensure PostgreSQL is up before continuing
until PGPASSWORD=$DATABASE_PASSWORD psql -h "$DATABASE_HOST" -U "$DATABASE_USERNAME" -c '\q'; do
  echo "Waiting for PostgreSQL..."
  sleep 2
done

# Run Rails DB setup
bundle exec rails db:prepare

exec "$@"
