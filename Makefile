include .env

DC = docker compose

default: up

up:
	$(DC) up -d

stop:
	$(DC) stop

build:
	$(DC) up -d --build --force-recreate
	$(DC) down && $(DC) up -d

prune:
	$(DC) down --remove-orphans -v