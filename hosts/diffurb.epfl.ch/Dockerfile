FROM httpd:2.4-bookworm

RUN apt-get -qy update \
    && apt-get -qy install wget sed

# Install Apache OpenIDC
RUN cd / \
    && wget https://github.com/OpenIDC/mod_auth_openidc/releases/download/v2.4.16.8/libapache2-mod-auth-openidc_2.4.16.8-1.bookworm_amd64.deb \
    && apt-get -qy install ./libapache2-mod-auth-openidc_2.4.16.8-1.bookworm_amd64.deb

RUN mkdir -p /usr/local/apache2/conf/custom
RUN echo "\nInclude /usr/local/apache2/conf/custom/*.conf\n"\
    >> /usr/local/apache2/conf/httpd.conf

EXPOSE 80 443
