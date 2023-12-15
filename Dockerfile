# Use the official PHP 8.0 FPM image as the base
FROM php:8.0-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    nginx \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    curl \
    unzip

# Install PHP CLI
RUN apt-get update && apt-get install -y php-cli

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Copy Composer from the official image
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Set the working directory
WORKDIR /var/www/html

# Copy the application files to the container
COPY . /var/www/html

# Install Composer dependencies
RUN composer install

# Remove the default Nginx configuration and replace it with our own
RUN rm /etc/nginx/sites-enabled/default
COPY nginx.conf /etc/nginx/sites-enabled/laravel.conf

# Start Nginx and PHP-FPM
CMD service nginx start && php-fpm

# Expose port 80
EXPOSE 80