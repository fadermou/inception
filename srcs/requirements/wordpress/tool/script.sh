#! /bin/bash

cd /var/www/html
rm -rf *
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
chmod +x wp-cli.phar 
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
wp config create --dbname=$db_name \
    --dbuser=$db_user \
    --dbpass=$db_pwd \
    --dbhost=mariadb \
    --allow-root
wp core install --url=$DOMAIN_NAME \
                --title=$WP_TITLE \
                --admin_user=$WP_ADMIN_USR \
                --admin_password=$WP_ADMIN_PWD \
                --admin_email=$WP_ADMIN_EMAIL \
                --allow-root
# wp user create editor 
wp theme install astra --activate --allow-root
# sed -i 's/\/run\/php\/php7.4-fpm.sock/9000/g' /etc/php/7.4/fpm/pool.d/www.conf
# mkdir /run/php
sed -i 's/^listen = .*/listen = wordpress:9000/' /etc/php/7.4/fpm/pool.d/www.conf
mkdir /run/php #for the ip address
php-fpm7.4 -F
