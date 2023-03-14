#https://hub.docker.com/_/php
#source: https://github.com/laravel/sail
FROM php:8.0-fpm
MAINTAINER vitaliy ilinov <ilinov123@gmail.com>

ARG NODE_VERSION=18
ARG XDEBUG="off"

WORKDIR /var/www

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Europe/Kyiv

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install and enable additional extensions
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/
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

RUN if [ "$XDEBUG" = "on" ] ; then pecl install xdebug && docker-php-ext-enable xdebug; fi

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    locales \
    nano \
    zip \
    unzip \
    git \
    git \
    supervisor \
    make \
    wget \
    default-mysql-client \
    curl \
    && curl -sLS https://deb.nodesource.com/setup_$NODE_VERSION.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g npm \
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY start-container /usr/local/bin/start-container
COPY configs/supervisor/conf.d/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN chmod +x /usr/local/bin/start-container

#ENTRYPOINT ["start-container"]
