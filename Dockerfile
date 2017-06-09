FROM php:7.1
WORKDIR	/var/app

RUN apt-get update && apt-get install -y netcat \
    --no-install-recommends && rm -r /var/lib/apt/lists/*

RUN docker-php-ext-install pdo pdo_mysql

ENV RUN_ARTISAN_MIGRATE=${RUN_ARTISAN_MIGRATE:-"true"}

EXPOSE 80

COPY wait-for-mysql.sh /usr/local/bin/wait-for-mysql
RUN chmod +x /usr/local/bin/wait-for-mysql

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint
ENTRYPOINT ["docker-entrypoint"]
