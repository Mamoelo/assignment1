FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install nginx

COPY inndex.html /var/www/html/index.html

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]
