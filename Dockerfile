FROM composer:2 as composer
FROM php:8.0-fpm

WORKDIR /var/www/html

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    curl \
    unzip

RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

COPY . /var/www/html

RUN composer install

CMD php artisan serve --host=0.0.0.0 --port=8080
EXPOSE 8080