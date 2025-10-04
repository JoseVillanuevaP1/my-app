# Imagen base de PHP con FPM (FastCGI)
FROM php:8.2-fpm

# Instalar dependencias del sistema y extensiones de PHP
RUN apt-get update && apt-get install -y \
    git unzip zip nodejs npm libpng-dev libzip-dev && \
    docker-php-ext-install pdo_mysql zip gd

# Instalar Composer (gestor de dependencias de PHP)
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Establecer carpeta de trabajo
WORKDIR /var/www/html

# Copiar todos los archivos del proyecto al contenedor
COPY . .

# Instalar dependencias PHP y JS
RUN composer install --no-interaction --prefer-dist --optimize-autoloader && \
    npm install && npm run build

# Permisos para Laravel
RUN chmod -R 775 storage bootstrap/cache

# Puerto donde Laravel servirá la app
EXPOSE 8000

# Comando al iniciar el contenedor
CMD php artisan serve --host=0.0.0.0 --port=8000
