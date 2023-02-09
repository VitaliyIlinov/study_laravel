#https://hub.docker.com/_/php
FROM php:8.0-fpm
MAINTAINER vitaliy ilinov <ilinov123@gmail.com>

ARG UID
ARG GID

# Install and enable additional extensions
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/

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
    git \
    npm \
    default-mysql-client \
    curl

## https://github.com/mlocati/docker-php-extension-installer
RUN install-php-extensions @composer \
    gd \
    exif \
    imagick \
    zip \
    opcache \
    memcached \
    pcntl \
    redis \
    pdo_mysql \
    && mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

ARG XDEBUG="off"
RUN if [ "$XDEBUG" = "on" ] ; then pecl install xdebug && docker-php-ext-enable xdebug; fi

WORKDIR /var/www

COPY ./after-build.sh /docker/after-build.sh
RUN bash /docker/after-build.sh

#Create user
RUN groupadd --gid $GID $UID && useradd --uid $UID --gid $GID -m $UID
