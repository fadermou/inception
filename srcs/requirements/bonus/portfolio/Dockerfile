FROM debian:bullseye
RUN apt update -y && apt upgrade -y && apt install nginx -y && apt install openssl -y && apt install git -y
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MR/ST=BG/L=BG/O=ME/OU=ME Unit/CN=fadermou.42.fr"
COPY conf/default /etc/nginx/sites-available/default
RUN cd /var/www/html ;  git clone https://github.com/fadermou/portfolio
CMD ["nginx", "-g", "daemon off;"]
