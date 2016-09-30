#!/bin/bash
# This script depends on the netcat command
set -e

cmd="$1"

source /var/app/.env

until nc -z -v -w30 $DB_HOST $DB_PORT
do
  echo "Mysql is unavailable - sleeping..."
  sleep 4
done

>&2 echo "Mysql is up - executing command: $cmd"
($cmd)