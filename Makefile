include .env
ROOT_DIR   := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
IMAGE_NAME = $(APP_NAME)
BUILD_ID ?= $(shell /bin/date "+%Y%m%d-%H%M%S")
ARGS = $(filter-out $@,$(MAKECMDGOALS))

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
build : check
	@echo "build..."
	 docker build \
  	--build-arg uid=$(uid) \
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

help:
	@echo 'Targets:'
	@echo ' - build         Build docker images'
	@echo ' - up            Create and start containers'
	@echo ' - up-d          Create and start containers in the background'
	@echo ' - down          Stop and remove containers, networks, images, and volumes'
	@echo ' - help          Show this help and exit'
