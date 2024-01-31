# syntax=docker/dockerfile:1
FROM debian
RUN apt update && apt install vim -y && apt install nano -y && apt install nginx -y
CMD ["nginx", "-g", "daemon off;"]