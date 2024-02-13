FROM debian:bullseye
RUN apt update -y && apt upgrade -y && apt install curl -y && apt install php-fpm php-mysql -y
COPY tool/script.sh .
RUN bash ./script.sh
