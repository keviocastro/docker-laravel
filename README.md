# Purpose of this image | Finalidade desta imagem

A simple and fast server for laravel projects.
Um servidor simples e rápido para projetos laravel.

# Supported tags and respective `Dockerfile` links | Tags suportadas e respectivos links `Dockerfile`

  - [`lastest` (*Dockerfile*)](https://github.com/keviocastro/docker-laravel/blob/master/Dockerfile)
  -	[`5.2` (*Dockerfile*)](https://github.com/keviocastro/docker-laravel/blob/master/Dockerfile)

# What is laravel | O que é laravel  ?

Laravel is a web application framework with expressive, elegant syntax. 
Laravel é um framework de aplicações web com expressiva sintaxe, elegante.

https://laravel.com/ 

# How to use this image | Como utilizar esta imagem:

Before you start you need to have installed:
- docker: http://docs.docker.com/linux/step_one/ or https://docs.docker.com/installation/ubuntulinux/
- docker-compose: https://docs.docker.com/compose/install/

Within your laravel project directory, you must create the docker-compose.yml file as in the example below:
Dentro do seu diretório de projeto laravel, você deve criar o arquivo docker-compose.yml como no exemplo abaixo:

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
Em seguida, execute o comando:

```sh
& docker-compose up
```

### Is ready | Pronto:

Your application is accessible in: http://localhost 
Seu aplicativo está acessivel em: http://localhost

#### Customizations | Customizações:

To change the web server port, modify the port forwarding in the docker-compose.yml file:
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

this example your application will be accessible on: http://localhost:8080 
Neste exemplo seu aplicativo estará acessivel em: http://localhost:8080


