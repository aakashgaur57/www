FROM ubuntu:latest
## pull images from registry
LABEL name=akash
LABEL email=aakashgaur57@gmail.com
RUN apt update
RUN apt install apache2 -y
## install apache2 for web hosting
COPY index.html /var/www/html/index.html
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
## use for default process
