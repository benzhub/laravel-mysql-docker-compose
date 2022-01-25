#!/bin/bash
rc-service php-fpm8 start
rc-service nginx start
cd /var/www/localhost/htdocs
# composer create-project laravel/laravel --prefer-dist .
# chmod 777 -R /var/www/localhost/htdocs
tail -f /dev/null