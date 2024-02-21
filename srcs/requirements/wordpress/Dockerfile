FROM debian:bullseye
RUN apt update -y && apt upgrade -y && apt install curl -y && apt install php-fpm php-mysql -y && apt install systemctl -y
RUN apt update -y && apt upgrade -y && apt-get install -y php7.4\
						php-fpm\
						php-mysql\
						mariadb-client
COPY tool/script.sh .
CMD ["bash", "./script.sh"]
 