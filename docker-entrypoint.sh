#!/bin/bash
set -e

# Export laravel environments variables
# $DB_HOST, $DB_PORT and others
source /var/app/.env

if [[ $RUN_ARTISAN_MIGRATE ]]; then
	wait-for-mysql 'php artisan migrate'
fi

php artisan serve --host=0.0.0.0 --port=80