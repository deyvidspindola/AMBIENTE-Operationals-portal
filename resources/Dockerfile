FROM ubuntu:20.04

WORKDIR /var/www/html

ARG IMAGE_DESCRIPTION

LABEL Description=${IMAGE_DESCRIPTION}

# Update the system and install required packages
RUN ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
apt-get update && \
apt-get upgrade -y && \
apt-get install -y curl apache2 php php-curl php-xdebug && \
a2enmod rewrite && \
apt-get autoremove -y && apt-get clean

COPY ./xdebug.ini /etc/php/7.4/mods-available/xdebug.ini

ENTRYPOINT ["/tmp/entrypoint.sh"]