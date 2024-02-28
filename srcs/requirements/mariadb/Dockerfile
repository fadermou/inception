FROM debian:bullseye
RUN apt update -y && apt upgrade -y && apt-get install mariadb-server -y 
COPY tool/user.sh .
RUN sed -i 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf 
ARG db_name
ARG db_user
ARG db_pwd
ARG db_root_pwd
ENV db_name: ${db_name}
ENV db_user: ${db_user}
ENV db_pwd: ${db_pwd}
ENV db_root_pwd: ${db_root_pwd}
RUN bash ./user.sh
CMD ["mysqld_safe"]
