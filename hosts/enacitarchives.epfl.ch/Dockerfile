FROM php:8.2-apache

RUN rm /etc/apache2/sites-enabled/000-default.conf
RUN a2enmod include cgi info rewrite

RUN apt -qy update \
    && apt -qy install sed wget build-essential ca-certificates \
    apache2-dev libssl-dev libc-client-dev libkrb5-dev libpq-dev

# Install Tequila
RUN cd / \
    && wget https://tequila.epfl.ch/download/2.0/tequila-apache-C-2.0.17.tgz \
    && tar zxvf tequila-apache-C-2.0.17.tgz
RUN cd /tequila-2.0.17/Apache/C/ \
    && sed -i 's/ && service httpd restart//g' Makefile
RUN cd /tequila-2.0.17/Apache/C/ \
    && make && make install

RUN mkdir /var/tequila \
    && chown www-data: /var/tequila
# RUN mkdir /var/log/apache2/ \
#     && chown www-data: /var/log/apache2/
