FROM php:7.4-apache
RUN docker-php-ext-install
RUN pecl install xdebug-2.7.0
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.remote_enable=1" >> /usr/local/etc/php/php.ini
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
