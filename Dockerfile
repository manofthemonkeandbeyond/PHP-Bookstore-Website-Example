# 1. Use an official PHP image with Apache pre-installed
FROM php:8.2-apache

# 2. Install the PDO MySQL extension for database connectivity
RUN docker-php-ext-install pdo pdo_mysql

# 3. Copy your website files into the container's web directory
COPY . /var/www/html/

# 4. Expose port 80 to allow web traffic
EXPOSE 80

# 5. Apache starts automatically, so no CMD instruction is strictly needed, 
# but this keeps it explicit:
CMD ["apache2-foreground"]