FROM php:7.0-cli

# PDO_Mysql extension enabling
RUN docker-php-ext-install pdo pdo_mysql

# App setup
ADD . /code
WORKDIR /code

EXPOSE 8080
 
# slim-specific requirements installation
#CMD [ "php", "composer.phar", "self-update" ]
#CMD [ "php", "composer.phar", "install" ]
