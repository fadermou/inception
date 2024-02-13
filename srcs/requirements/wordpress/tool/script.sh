mkdir /var/www/
mkdir /var/www/html

cd /var/www/html

rm -rf *

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

chmod +x wp-cli.phar 

mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

sed -i -r "s/database/$db_name/1"       wp-config.php
sed -i -r "s/database_user/$db_user/1"  wp-config.php
sed -i -r "s/passwod/$db_pwd/1"         wp-config.php