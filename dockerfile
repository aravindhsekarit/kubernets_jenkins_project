FROM ubuntu:latest
MAINTAINER aravindh.sekarit@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.tooplate.com/download/2137_barista_cafe/2137_barista_cafe.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip 2137_barista_cafe.zip
RUN cp -rvf 2137_barista_cafe/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

