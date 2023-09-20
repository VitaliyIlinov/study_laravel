#!/bin/bash

#Edit configuration -> add shell script to your PHPStorm
message() {
  printf "\033[1;33m %s \033[0m\n" "$1"
}

PROJECT_DIR=$(php -r "echo dirname(realpath('$0'),3);")
FOLDERS=(study_laravel);

message "Remove all docker containers";
docker rm -f $(docker ps -aq);

for FOLDER in "${FOLDERS[@]}"; do
  cd "$PROJECT_DIR/$FOLDER" || exit
  message "Running: $PROJECT_DIR/$FOLDER"
  make up
done

cd "$PROJECT_DIR" || exit
