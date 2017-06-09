# Laravel docker image

A simple image for development environment with laravel framework

  - PHP 7.1

# Whats is laravel

The PHP Framework For Web Artisans.
https://laravel.com/

Run:
`console docker run --name my-app -v "$PWD":/var/app/`

Run with docker-composer:

See file docker-composer.yml exmple:

```yml
version: '2'
services:
  web:
    build: keviocastro/laravel
    depends_on:
      - db
    volumes:
      - ".:/var/app/"
      - "~/.bash_history:/root/.bash_history"
    ports:
      - "80:80"
    links:
      - "db"
  db:
    image: mysql:5.7
    ports:
      - "3306:3306"
    environment:
      MYSQL_ROOT_PASSWORD: secret
      MYSQL_DATABASE: my-app`
```
