# Docker environment : php-8.2

  - ## Disclaimer

    This environment should only be used for local development purposes as it has none of the required safety measures needed for production.

  - ## The containers

    - [php-apache](https://github.com/ld-web/docker-php-apache/pkgs/container/php-apache)
      : Modified version of the [official php docker image](https://registry.hub.docker.com/_/php) with pdo_mysql, composer and xdebug.

    - [mysql](https://registry.hub.docker.com/_/mysql)
      : Official mysql docker image.

    - [phpmyadmin](https://registry.hub.docker.com/r/phpmyadmin/phpmyadmin) / [adminer](https://hub.docker.com/r/michalhosna/adminer)
      : Official phpmyadmin docker image.
      : Custom adminer docker image with autologin.

  - ## The volumes

    the volumes are the links between your local files and the container's files which allows to interact with them remotely.
    
    - [html](./html)
      : Linked to the folder `/var/www/html/` in the **php** container it is  the project's code folder.

    - [.mysql-data](./.mysql-data)
      : Linked to the folder `/var/lib/mysql` in the **mysql** container it allows to store the data locally so that if you were to rebuild the container you would keep your databases.
      : *PS : This folder has been set up so that it won't be versioned so do the database's schemas backups manually.*

  - ## The environment variables

    The variables stored in the [`.env`](./.env) file are used in both the [`docker-compose.yml`](./docker-compose.yml) file and the [`Makefile`](./Makefile) so that if you want to change aspects of the environment, you only need to change it once.
    
    *PS : You need to restart the docker containers if you want to apply changes to this file.*


Prerequisites
 - docker
 - gnu make

Describe Makefile
 - start and stop containers
 - terminals : close with the command exit

Notes for if you wanna change the environment
 - how to swap from docker image to docker file in docker-compose

# TODO : see how to have root and normal users in mysql container.
# TODO : change mysql to mariadb.
# TODO : find a way to gitkeep the .mysql-data folder so that it can be emptied without removing the gitkeep.
