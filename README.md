# Purpose of this image

A simple and fast server for laravel projects.

# Supported tags and respective `Dockerfile` links

  - [`lastest` (*Dockerfile*)](https://github.com/keviocastro/docker-laravel/blob/master/Dockerfile)
  -	[`5.2` (*Dockerfile*)](https://github.com/keviocastro/docker-laravel/blob/master/Dockerfile)

# What is Elgg ?

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as authentication, routing, sessions, and caching.

See: https://laravel.com/ 

# How to use this image

Before you start you need to have installed:
- docker: http://docs.docker.com/linux/step_one/ or https://docs.docker.com/installation/ubuntulinux/
- docker-compose: https://docs.docker.com/compose/install/

### For use with docker-compose:

Within your laravel project directory, you must create the docker-compose.yml file as in the example below:

#### docker-compose.yml

```yml
version: '2'
services:
  web:
    image: keviocastro/laravel:5.2
    depends_on:
      - db
    volumes:
      - ".:/var/app/"
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
      MYSQL_DATABASE: database_name

```

Then run the command:

```sh
& docker-compose up
```

### Pronto

Seu aplicativo está acessivel em: http://localhost

#### Customizações:

Você pode modificar a porta do servidor http, alterando o redirecionamento de portas no
arquivo docker-compose.yml. Veja o exemplo:

```yml
version: '2'
services:
  web:
    image: keviocastro/laravel:5.2
    depends_on:
      - db
    volumes:
      - ".:/var/app/"
    ports:
      - "8080:80"
```

Neste exemplo seu aplicativo estará acessivel em: http://localhost:8080


