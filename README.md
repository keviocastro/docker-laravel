# Purpose of this image

Um servidor simples e rápido para projetos laravel.

# Supported tags and respective `Dockerfile` links

  - [`lastest` (*Dockerfile*)](https://github.com/keviocastro/docker-laravel/blob/master/Dockerfile)
  -	[`5.2` (*Dockerfile*)](https://github.com/keviocastro/docker-laravel/blob/master/Dockerfile)

# What is laravel?

Laravel is a web application framework with expressive, elegant syntax. 

https://laravel.com/ 

# How to use this image:

Before you start you need to have installed:
- docker: http://docs.docker.com/linux/step_one/ or https://docs.docker.com/installation/ubuntulinux/
- docker-compose: https://docs.docker.com/compose/install/

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

### Is ready:

Your application is accessible in: http://localhost 

#### Customizations:

To change the web server port, modify the port forwarding in the docker-compose.yml file:

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

This example your application will be accessible on: http://localhost:8080

### Questions?

Create an issue: https://github.com/keviocastro/docker-laravel/issues/new

