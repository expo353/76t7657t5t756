# Use the official PHP image
FROM php:8.2-apache

# Copy the PHP script into the container
COPY index.php /var/www/html/

# Set the correct permissions
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# Expose the default Apache port
EXPOSE 80

# Enable mod_rewrite for Apache (if needed)
RUN a2enmod rewrite

# Start the Apache server
CMD ["apache2-foreground"]
