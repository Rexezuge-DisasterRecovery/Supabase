#!/bin/bash
set -e

if [ -z "$DATABASE_URL" ]; then
  echo "DATABASE_URL is required"
  exit 1
fi

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
OUTPUT_FILE=${OUTPUT_FILE:-"/backup/postgres_${TIMESTAMP}.dump"}

echo "Backing up database..."
echo "Output: ${OUTPUT_FILE}"

pg_dump \
  --format=custom \
  --no-owner \
  --no-privileges \
  --dbname="$DATABASE_URL" \
  --file="$OUTPUT_FILE"

echo "Backup completed."
