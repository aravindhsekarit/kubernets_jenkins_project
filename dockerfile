FROM centos:7

MAINTAINER aravindh.sekarit@gmail.com

# Install required packages
RUN yum install -y httpd zip unzip && \
    yum clean all

# Download and unzip the website template
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

WORKDIR /var/www/html

RUN unzip photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip

# Start Apache in foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80 443

