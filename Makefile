# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

include .env
dc := docker-compose
CONTAINER_NAME := main
CONTAINER_USER ?= $(shell id -u)
ARGS = $(filter-out $@,$(MAKECMDGOALS))
MYSQL_DUMP=dumps/dump.sql

.SILENT: ;               # no need for @
.EXPORT_ALL_VARIABLES: ; # send all vars to shell

default: help

check:
ifeq ($(APP_NAME),)
	$(error Missed APP_NAME argument.)
endif
ifeq ($(CONTAINER_USER),)
	$(error Missed CONTAINER_USER argument.)
endif

build: check## Run build
	$(dc) build --force-rm --build-arg USER="$(CONTAINER_USER)"
	make composer-install
	$(dc) exec "$(CONTAINER_NAME)" php artisan key:gen
	$(dc) exec "$(CONTAINER_NAME)" php artisan migrate:fresh --seed
	$(dc) exec "$(CONTAINER_NAME)" php artisan storage:link
	$(dc) run --rm "$(CONTAINER_NAME)" npm install
	$(dc) run --rm "$(CONTAINER_NAME)" npm run dev

code-sniff: ## Run code sniff
	$(dc) exec -T "$(CONTAINER_NAME)" ./vendor/bin/phpcs $(git diff --name-only)

run: ## Run all necessary dependency
	make composer-install
	$(dc) exec "$(CONTAINER_NAME)" php artisan migrate
	$(dc) exec "$(CONTAINER_NAME)" php artisan db:seed
	$(dc) exec "$(CONTAINER_NAME)" npm install
	$(dc) exec "$(CONTAINER_NAME)" npm run dev

lint: ## Checking the standard code
	find . -name '*.php' -exec php -l {} \; | grep "error:"

up: ## Run containers
	$(dc) up -d --remove-orphans

down: ## Remove docker containers
	$(dc) down

composer-install: up ## Install php dependencies
	$(dc) exec -T  "$(CONTAINER_NAME)" composer install --optimize-autoloader --no-interaction --ansi --no-suggest

bash: ## Bash to main container
	$(dc) exec "$(CONTAINER_NAME)" bash

logs: ## Docker logs
	$(dc) logs $(ARGS)

config: ## Show container config
	$(dc) config

clean: ## Remove *.log from storage folder
	@find storage -name "*.log" -delete

mysql: ## Bash to mysql container
	$(dc) exec mysql bash

mysql-dump: ## Make Mysql dump to $(MYSQL_DUMP)
	@$(dc) exec mysql mysqldump --extended-insert=FALSE $(DB_DATABASE) > "$(MYSQL_DUMP)"

mysql-restore: ## Restore mysqlDB from $(MYSQL_DUMP)
	@$(dc) exec -T mysql mysql $(DB_DATABASE) < $(MYSQL_DUMP)
