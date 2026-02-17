# STAGE 1: The "Builder"
# We use a full version of PHP with all the tools needed to install dependencies
FROM php:8.3-fpm-alpine AS builder

# Install system dependencies for PHP extensions
RUN apk add --no-cache libpng-dev zlib-dev libxml2-dev

# Install PHP extensions
RUN docker-php-ext-install gd bcmath

# Set working directory
WORKDIR /app
COPY . .

# ---------------------------------------------------------

# STAGE 2: The "Production" Image
# We start fresh with a tiny image and only copy what we need
FROM php:8.3-fpm-alpine

# Set working directory
WORKDIR /var/www/html

# Copy ONLY the necessary files from the builder stage
COPY --from=builder /app/index.php .
COPY --from=builder /app/.env .

# Set permissions for security
RUN chown -R www-data:www-data /var/www/html

USER www-data

EXPOSE 9000
CMD ["php-fpm"]
