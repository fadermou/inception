FROM debian:bullseye
RUN apt update -y && apt upgrade -y && apt-get install mariadb-server -y 
# COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf 
COPY tool/user.sh .
# RUN sed -i 's/\/run\/php\/php7.4-fpm.sock/9000/g' /etc/php/7.4/fpm/pool.d/www.conf
RUN sed -i 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf 
ARG db_name="wordpress"
ARG db_user="fadermou"
ARG db_pwd="123"
ARG db_root_pwd="1234"
RUN bash ./user.sh

CMD ["mysqld_safe"]
