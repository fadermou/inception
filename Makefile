
version: "3"

services:
  nginx:
    build: requirements/nginx/
    networks:
      - inception
    container_name: nginx
    ports:
    - "443:443"            
    restart: always
  mariadb:
    container_name: mariadb
    build: requirements/mariadb/
    networks:
      - inception
    restart: always
    env_file:
      - .env
    volumes:
      - /var/lib/mysql

# networks:
#   inception:
#     name : inception

  volumes:
    mariadb:
      name: mariadb
      driver: local
      driver_opts:
      type: none
      device: /home#/fadermou/data/mariadb
    nginx:
      name: nginx
      driver: local
      driver_opts:
      type: none
      device: /home#/fadermou/data/nginx