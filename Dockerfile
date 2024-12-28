# Use the official PHP image
FROM php:8.2-apache

# Copy the PHP files into the container
COPY index.php /var/www/html/
COPY wow.php /var/www/html/
COPY antibot_installer.php /var/www/html/

# Set the correct permissions for all files
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# Enable mod_rewrite for Apache (if needed for URL rewriting)
RUN a2enmod rewrite

# Expose the default Apache port
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]
