
service mariadb start;

mysql -u root  << EOF 
CREATE DATABASE IF NOT EXISTS $db_name;
CREATE USER IF NOT EXISTS $db_user@'localhost' IDENTIFIED BY '$db_pwd';
GRANT ALL PRIVILEGES ON $db_name.* TO $db_user@'%' IDENTIFIED BY '$db_pwd';
ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root_pwd';
FLUSH PRIVILEGES;
EOF


# service mariadb stop;
