[12:26 PM] Varinder Pal Singh
# Use an official PHP runtime as a parent image

FROM php:8.1-apache

# Set the working directory inside the container

WORKDIR /var/www/html

# Copy the current directory contents into the container

COPY . /var/www/html

# Install any needed extensions specified in requirements.txt

RUN docker-php-ext-install mysqli pdo pdo_mysql

# Expose port 80 to the outside world

EXPOSE 80

# Start Apache in the foreground

CMD ["apache2-foreground"]
