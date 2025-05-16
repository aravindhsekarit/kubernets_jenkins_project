FROM centos:7
MAINTAINER aravindh.sekarit@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://codeload.github.com/themewagon/iPortfolio/zip/refs/tags/v1.0.0 /var/www/html/
WORKDIR /var/www/html/
RUN unzip iPortfolio-1.0.0.zip
RUN cp -rvf iPortfolio-1.0.0/* .
RUN rm -rf iPortfolio-1.0.0 iPortfolio-1.0.0.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 443

