include .env # To get the environment variables.

# Manage containers.

up: # Starts the containers.
	docker-compose up -d --remove-orphans

build: # Builds the containers using the Dockerfiles.
	docker-compose up -d --remove-orphans --build

down: # Stops the containers.
	docker-compose stop

rm: # Removes the containers.
	docker-compose rm -fsv

# Open terminals in docker containers.

php: # Open php-apache terminal.
	docker exec -it ${NAMESPACE}-php-apache bash

sql: # Open mysql terminal.
	docker exec -it ${NAMESPACE}-mysql mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD}