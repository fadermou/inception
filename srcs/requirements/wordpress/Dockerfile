FROM debian:bullseye
RUN apt upgrade -y && apt upgrade -y && apt install php-fpm php-mysql -y&& apt install curl -y
COPY tool/script.sh .
CMD [ "bash", "script.sh" ]