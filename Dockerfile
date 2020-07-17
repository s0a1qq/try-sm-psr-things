FROM php:fpm

RUN pecl install xdebug-2.6.1 && docker-php-ext-enable xdebug

CMD ["php-fpm"]