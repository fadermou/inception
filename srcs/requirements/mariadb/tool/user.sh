service mariadb start;

mysql -u root  << EOF 
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS fadermou@'localhost' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON wordpress.* TO fadermou@'%' IDENTIFIED BY '123';
ALTER USER 'root'@'localhost' IDENTIFIED BY '1234';
FLUSH PRIVILEGES;
EOF


# service mariadb stop;
