#https://hub.docker.com/_/php
FROM php:7.4-fpm
MAINTAINER vitaliy ilinov <ilinov123@gmail.com>

# console command: id -u
# 1000 - is USER;
# && creating file in MOUNT volume will be from current user
ARG uid
ARG user

# Install and enable additional extensions

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/

# Install extensions by docker-php-ext-install.
RUN install-php-extensions pdo_mysql xdebug

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    locales \
    nano \
    zip \
    unzip \
    autoconf \
    make \
    wget \
    npm \
    curl

## Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Create user
RUN useradd ${user}

COPY ./ /docker

RUN cp /docker/php.ini-development "$PHP_INI_DIR/php.ini"
#additional
RUN bash /docker/after-build.sh
