FROM centos:7
MAINTAINER aravindh.sekarit@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.tooplate.com/download/2137_barista_cafe /var/www/html/
WORKDIR /var/www/html/
RUN unzip 2137_barista_cafe.zip
RUN cp -rvf 2137_barista_cafe/* .
RUN rm -rf 2137_barista_cafe0 2137_barista_cafe.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 443

