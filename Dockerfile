# Use the official PHP image with Apache as the base image
FROM php:8.1-apache

# Install required PHP extensions and utilities
RUN docker-php-ext-install mysqli pdo pdo_mysql && \
    a2enmod rewrite

# Copy your application files to the container's document root
COPY . /var/www/html

# Expose port 80 (the default HTTP port)
EXPOSE 80
