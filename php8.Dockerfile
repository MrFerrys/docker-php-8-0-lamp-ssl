FROM php:8.0-apache

COPY Local.crt /etc/apache2/ssl/ssl.crt
COPY Local.key /etc/apache2/ssl/ssl.key

ADD default-ssl.conf /etc/apache2/sites-enabled/

RUN apt update
RUN apt-get install -y libxml2 libxml2-dev libzip-dev zip
RUN a2enmod ssl

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-install xml
RUN docker-php-ext-install zip
RUN docker-php-ext-install opcache


