FROM centos :latest
MAINTAINER rohitbhatt76524@gmail.com
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/downloading/page247/kindle.zip/var/www/html/
WORKDIR /var/www/html
RUN cp -rvf markups-kindle/*.
RUN rm -rvf_MACOSX markups-kindle kindle.zip
CMD['/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
