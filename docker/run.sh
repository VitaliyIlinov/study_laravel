#!/bin/bash

#Edit configuration -> add shell script to your PHPStorm
message() {
  BYellow='\033[1;33m'
  Color_Off='\033[0m';
  printf "${BYellow} $1 ${Color_Off}\n"
}

PROJECT_DIR=$(php -r "echo dirname(realpath('$0'),3);")
FOLDERS=(study_laravel);

message "Remove all docker containers";
docker rm -f $(docker ps -aq);

for FOLDER in "${FOLDERS[@]}"; do
  cd "$PROJECT_DIR/$FOLDER"
  message "Running: $PROJECT_DIR/$FOLDER"
  make up
done

cd $PROJECT_DIR
