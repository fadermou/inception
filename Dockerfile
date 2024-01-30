# syntax=docker/dockerfile:1
FROM debian
RUN apt update && apt install vim -y && apt install nano -y 
CMD ["/bin/bash"]
