ARG BASE_IMAGE

FROM $BASE_IMAGE

RUN apt-get update
RUN apt-get -y install nginx

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
