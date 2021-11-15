#https://hub.docker.com/_/php
FROM php:7.4-fpm
MAINTAINER vitaliy ilinov <ilinov123@gmail.com>

# console command: id -u
# 1000 - is USER;
# && creating file in MOUNT volume will be from current user
ARG GROUP_ID
ARG USER_ID

# new UID && GID for the user
RUN usermod --non-unique --uid ${USER_ID} www-data \
  && groupmod --non-unique --gid ${GROUP_ID} www-data

# Install and enable additional extensions
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/

# Install extensions by docker-php-ext-install.
RUN install-php-extensions pdo_mysql \
    gd \
    imagick \
    zip \
    xdebug

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

COPY ./ /docker

RUN cp /docker/php.ini-development "$PHP_INI_DIR/php.ini"
#additional
RUN bash /docker/after-build.sh
