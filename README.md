## About Project

Docker-compose running Nginx, PHP-FPM, MySQL, Redis, Phpmyadmin based on [Laravel](https://laravel.com/docs) framework

### Images to use

* [PHP-FPM](https://hub.docker.com/_/php) own build
* [Nginx](https://registry.hub.docker.com/_/nginx)
* [MySQL](https://hub.docker.com/_/mysql/)
* [Redis](https://registry.hub.docker.com/_/redis)
* [Phpmyadmin](https://hub.docker.com/r/phpmyadmin/phpmyadmin/)

## Overview

1. [Install prerequisites](#install-prerequisites)

   Before installing project make sure the following prerequisites have been met.

2. [Clone the project](#clone-the-project)

   We’ll download the code from its repository from version control system.

3. [Use Makefile](#use-makefile) [`Optional`]

   When developing, you can use `Makefile` for doing recurrent operations.

4. [Default config](#default-config)

   Config .env file.

5. [Run the application](#run-the-application)

   By this point we’ll have all the project pieces in place.

## Install prerequisites

All requisites should be available for your distribution. The most important are :

* [Git](https://git-scm.com/downloads)
* [Docker](https://docs.docker.com/engine/install/ubuntu/)
* [Docker Compose](https://docs.docker.com/compose/install/)
* [Make](https://www.gnu.org/software/make/manual/make.html)

For now, this project has been mainly created for Unix `(Linux/MacOS)`. Perhaps it could work on Windows.
1. For install Docker [see](https://docs.docker.com/engine/install/ubuntu/).

2. For install docker-compose run:
```sh
sudo apt install docker-compose
```
Check if `docker-compose` is already installed by entering the following command :

```sh
which docker-compose
```
3. For install [Make](https://www.gnu.org/software/make/manual/make.html) :
```sh
sudo apt install make
```
The following is optional but makes life more enjoyable :

```sh
which make
```

To run the docker commands without using **sudo** you
must [add](https://docs.docker.com/engine/install/linux-postinstall/) the **docker** group to **your-user**:
```bash
sudo groupadd docker
```
```bash
sudo usermod -aG docker $USER
```
```bash
newgrp docker
```
If you want to work in container with own user see [documentation](https://docs.docker.com/engine/security/rootless/)

## Clone the project

Clone repository to the common place

```bash
git clone [current repository] ~/workspace/project_name
```

## Use Makefile

When developing, you can use [Makefile](https://en.wikipedia.org/wiki/Make_(software)) for doing the following
operations :

```bash
make help
```

| Name             | Description                                   |
|------------------|-----------------------------------------------|
| build            | Build docker images                           |
| code-sniff       | Check the API with PHP Code Sniffer (`PSR12`) |
| up               | Create and start containers                   |
| down             | Stop and clear all services                   |
| composer-install | Bash to container & Install composer and npm  |
| bash             | Enter to main container                       |
| logs [NAME]      | Follow log output                             |
| config           | Show container config                         |
| mysql-dump       | Create database backup                        |
| mysql-restore    | Restore database backup                       |

## Default config

* Copying the **env** configuration file :
    ```sh
    cp .env.example .env
    ```
  **Enter own configs...**

If You want change webserver port, change value in .env file:
```
APP_PORT=81
```
If You want change mysql port, change value in .env file:
```
FORWARD_DB_PORT=3307
```

## Run the application

1. Build application :
    ```sh
    make build
    ```
**This command run operation step by step:**

- **docker-compose build --force-rm**
- **composer install --optimize-autoloader --no-interaction --ansi --no-suggest**
- **php artisan key:gen**
- **php artisan migrate:fresh --seed**
- **php artisan storage:link**
- **npm install**
- **npm run dev**

2. Open your favorite browser :
   - [http://127.0.0.1:80](http://127.0.0.1:80/)

3. Stop and clear services
    ```sh
    make down
    ```
4. Stop and clear services
   - [http://127.0.0.1:9001/](http://127.0.0.1:9001/)

### Optional

To run phpcs, php lint before commit install git hooks (in the root of the project):

   ```sh
     ./docker/git-hooks/git-hook-install.sh
   ```

To run dependent projects with a single click, add the **docker/run.sh** script (in the root of the project)
