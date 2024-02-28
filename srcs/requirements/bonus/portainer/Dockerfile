FROM debian:bullseye
RUN apt update && apt install curl -y 
RUN curl -LJO https://github.com/portainer/portainer/releases/download/2.19.4/portainer-2.19.4-linux-amd64.tar.gz
RUN  tar -xf portainer-2.19.4-linux-amd64.tar.gz 

CMD [ "portainer/./portainer"]