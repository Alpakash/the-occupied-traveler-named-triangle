# Use the official PHP 8.0 FPM image as the base
FROM php:8.0-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    curl \
    unzip

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set the working directory
WORKDIR /var/www/html

# Copy the application files to the container
COPY . /var/www/html

# Install Composer dependencies
RUN composer install

# Start the Laravel server
CMD php artisan serve --host=0.0.0.0 --port=8080

# Expose port 8080
EXPOSE 8080