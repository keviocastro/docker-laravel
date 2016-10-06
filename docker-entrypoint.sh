#!/bin/bash
set -e

# Export laravel environments variables
# $DB_HOST, $DB_PORT and others
if [[ -f /var/app/.env ]]; then
	source /var/app/.env
else
	if [[  -f /var/app/.env.example ]]; then
		cp /var/app/.env.example /var/app/.env
		php artisan key:generate
		source /var/app/.env
	else
		php artisan key:generate
		source /var/app/.env
	fi
fi

if [[ $RUN_ARTISAN_MIGRATE ]]; then
	wait-for-mysql 'php artisan migrate'
fi

php artisan serve --host=0.0.0.0 --port=80