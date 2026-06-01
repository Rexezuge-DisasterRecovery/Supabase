docker run --rm \
  -e DATABASE_URL="postgres://user:password@db.example.com:5432/mydb" \
  -v $(pwd):/backup \
  postgres-backup

./postgres_20260601_120000.dump
