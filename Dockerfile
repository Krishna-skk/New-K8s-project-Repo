FROM centos:latest

MAINTAINER krishnaskk1996@gmail.com

RUN sudo apt install nginx -y \
 zip\
 unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/vertex.zip /var/www/html/

WORKDIR /var/www/html/

RUN unzip vertex.zip

RUN cp -rvf vertex/* .

CMD ["/usr/sbin/nginx", "-D", "FOREGROUND"]

EXPOSE 80
