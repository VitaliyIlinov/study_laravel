include .env
ROOT_DIR   := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
IMAGE_NAME = $(APP_NAME)
BUILD_ID ?= $(shell /bin/date "+%Y%m%d-%H%M%S")
ARGS = $(filter-out $@,$(MAKECMDGOALS))
MYSQL_DUMPS_DIR=storage/mysql/dumps


.SILENT: ;               # no need for @
.EXPORT_ALL_VARIABLES: ; # send all vars to shell

E ?= ternarniy operator
#VERSION ?= $(shell cat $(ROOT_DIR)/VERSION | head -n 1)
ifeq ($(VERSION),)
VERSION := 0.0.1
endif
default: help

test: foo:=7.2
test: foo1:=nginx
test:$(foo) $(foo1)
	echo $(E)
	echo $(ARGS)
	echo $(foo)
	echo $(foo1)
ifneq ($(foo),)
	@echo "with foo"
else
	@echo "without foo"
endif

check:
ifeq ($(APP_NAME),)
	$(error Missed APP_NAME argument.)
endif

build: uid:=$(shell id -u)
build: user:=$(shell id -u -n)
build : check
	@echo "build..."
	 docker build \
  	--build-arg uid=$(uid) \
  	--build-arg user=$(user) \
 	--force-rm  \
 	--no-cache \
 	-t $(IMAGE_NAME) ./docker/

up:
	docker-compose up -d

down:
	@docker-compose down

bash:
	@docker-compose exec $(IMAGE_NAME) bash

logs:
	@docker-compose logs ${ARGS}

config:
	@docker-compose config

del:
	@docker container rm $(shell docker ps -aq) -f

clean:
	@sudo rm -f \
		./storage/logs/nginx/* \
		./storage/logs/php/*

mysql-dump:
	@mkdir -p $(MYSQL_DUMPS_DIR)
	@docker exec $(shell docker-compose ps -q db) mysqldump --all-databases -u"$(DB_USERNAME)" -p"$(DB_PASSWORD)" > $(MYSQL_DUMPS_DIR)/db.sql 2>/dev/null
	@make resetOwner

mysql-restore:
	@docker exec -i $(shell docker-compose ps -q mysqldb) mysql -u"$(DB_USERNAME)" -p"$(DB_PASSWORD)" < $(MYSQL_DUMPS_DIR)/db.sql 2>/dev/null

help:
	@echo 'Targets:'
	@echo ' - build         Build docker images'
	@echo ' - up            Create and start containers'
	@echo ' - bash          Enter in container'
	@echo ' - logs [NAME]   Show container logs'
	@echo ' - clean         Clean App logs'
	@echo ' - mysql-dump    Create backup of all databases'
	@echo ' - mysql-restore Restore backup of all databases'
	@echo ' - up-d          Create and start containers in the background'
	@echo ' - down          Stop and remove containers, networks, images, and volumes'
	@echo ' - help          Show this help and exit'
