FROM debian:bullseye
RUN apt update -y && apt upgrade -y && apt-get install mariadb-server -y 
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf 
COPY tool/user.sh .
RUN bash ./user.sh
ARG db_name="wordpress"
ARG db_="fadermou"
ARG SQL_PASSWORD="123"
ARG SQL_ROOT_PASSWORD="123"

CMD ["mysqld_safe"]
