FROM php:8.3.9-apache

RUN apt -qy update \
    && apt -qy install ssmtp

RUN docker-php-ext-install mysqli pdo pdo_mysql
