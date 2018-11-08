FROM devopsedu/webapp

MAINTAINER vinay

RUN apt-get update && \ 
apt-get install -y git

WORKDIR /var/www/html

RUN git init &&\
git clone https://github.com/edureka-devops/projCert.git && \
cp -pR projCert/website/* /var/www/html/ 

#CMD apachectl -D BACKGROUND
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]
EXPOSE 80

