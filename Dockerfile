# InstallingHttpd

#Base OS - centos

FROM centos:7

#Install Httpd package 

RUN yum install httpd -y

#WORKINGDIR /var/www/html/

WORKDIR /var/www/html/

# copy index.html to /var/www/html/

COPY . .

#start the service

CMD ["/usr/sbin/apachectl/" ".D" "FOREGROUND"]