FROM centos:7
MAINTAINER rohitbhatt76524@gmail.com
RUN yum install -y httpd
#RUN yum install -y tree
RUN yum install -y unzip
#zip\
#unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/bakery.zip /var/www/html/
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kinde.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip bakery.zip
#RUN unzip kindle.zip
RUN cp -rvf bakery/* .
#RUN rm -rvf_MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
