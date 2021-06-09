FROM centos:centos7
RUN yum install -y httpd
COPY /files/index.html /var/www/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]