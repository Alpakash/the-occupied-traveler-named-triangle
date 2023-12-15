# Use the official PHP 8.0 FPM image as the base
FROM php:8.0-fpm
FROM ubuntu:latest

# Update and install necessary packages
RUN apt-get update && apt-get install -y ca-certificates curl gnupg

# Add NodeSource GPG key
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

# Set Node.js major version
ARG NODE_MAJOR=20

# Add NodeSource to sources list
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" > /etc/apt/sources.list.d/nodesource.list

# Install Yarn
RUN npm install -g yarn

# Install PHP and Node.js dependencies
COPY package.json /var/www/html
RUN yarn install

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

# Set the working directory
WORKDIR /var/www/html

# Copy the application files to the container
COPY . /var/www/html

# Install Composer dependencies
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer clear-cache && composer install --no-dev --optimize-autoloader

# Build the Vite app
RUN yarn build

# Start the Laravel server
CMD php artisan serve --host=0.0.0.0 --port=8080

# Expose port 8080
EXPOSE 8080