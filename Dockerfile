# Use the official PHP 8.0 FPM image as the base
FROM php:8.0-fpm

# Install Node.js dependencies
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs

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
COPY composer.json composer.lock /var/www/html/

# Install Composer dependencies
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install --no-dev --optimize-autoloader

# Build the Vite app
RUN yarn build

# Start the Laravel server
CMD php artisan serve --host=0.0.0.0 --port=8080

# Expose port 8080
EXPOSE 8080