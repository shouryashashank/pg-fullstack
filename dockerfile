From postgres:latest
Run apt-get update && apt-get -y install git build-essential
Run apt-get install -y --no-install-recommends \
    postgresql-contrib \
    postgresql-17-pgvector \
    postgresql-17-cron \
    postgresql-17-pglogical \
    postgresql-17-postgis
