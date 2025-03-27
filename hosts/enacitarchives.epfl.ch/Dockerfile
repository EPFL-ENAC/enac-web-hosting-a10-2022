FROM php:8.2-apache

RUN rm /etc/apache2/sites-enabled/000-default.conf
RUN a2enmod include cgi info rewrite remoteip

RUN apt -qy update \
    && apt -qy install sed wget build-essential ca-certificates \
    apache2-dev libssl-dev libc-client-dev libkrb5-dev libpq-dev

# Install Apache OpenIDC
RUN cd / \
    && wget https://github.com/OpenIDC/mod_auth_openidc/releases/download/v2.4.16.8/libapache2-mod-auth-openidc_2.4.16.8-1.bookworm_amd64.deb \
    && apt-get -qy install ./libapache2-mod-auth-openidc_2.4.16.8-1.bookworm_amd64.deb
