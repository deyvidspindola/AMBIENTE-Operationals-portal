FROM ubuntu:20.04

WORKDIR /var/www/html

ARG IMAGE_DESCRIPTION

LABEL Description=${IMAGE_DESCRIPTION}

# Update the system and install required packages
RUN ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
apt-get update && \
apt-get upgrade -y && \
apt-get install -y apache2 curl zip unzip software-properties-common \
    && add-apt-repository -y ppa:ondrej/php \
    && apt-get install -y php7.2-cli libapache2-mod-php7.2 php7.2-soap php7.2-xml php7.2-curl php-memcached php7.2-dev php7.2-sqlite3 php7.2-mbstring php7.2-gd php7.2-json php7.2-xdebug && \
a2enmod rewrite && \
apt-get autoremove -y && apt-get clean

COPY ./xdebug.ini /etc/php/7.2/mods-available/xdebug.ini

ENTRYPOINT ["/tmp/entrypoint.sh"]