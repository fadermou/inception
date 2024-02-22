FROM debian:bullseye
RUN apt update && apt install curl -y 
RUN curl -LJO https://github.com/portainer/portainer/releases/download/2.19.4/portainer-2.19.4-linux-amd64.tar.gz
RUN  tar -xf portainer-2.19.4-linux-amd64.tar.gz 
# RUN cd portainer && ./portainer 

CMD [ "portainer/./portainer"]

# RUN run -d -p 8000:8000 -p 9443:9443