FROM debian:bullseye
RUN apt update && apt install vim -y && apt install nano -y && apt install nginx -y && apt install procps -y 
# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt
# CMD ["nginx", "-g", "daemon off;"]
CMD ["nginx", "-g", "daemon off;"]  
