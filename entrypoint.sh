#!/bin/bash

cd src/

# composer.php regular update
php composer.phar self-update

# slim-specific requirements installation
php composer.phar install

# Apply database migrations
echo "Apply database migrations"
php vendor/bin/phinx migrate

# Start server
echo "Starting server"
cd public/
echo $PWD
# make sure:
# not to use localhost, use 0.0.0.0 instead
# cd to index.php folder before running the app
php -S 0.0.0.0:8080 

