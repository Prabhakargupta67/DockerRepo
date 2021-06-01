# InstallingHttpd

#Base OS - centos

FROM centos:latest

#Install Httpd package 

RUN DNF install httpd

#WORKINGDIR /var/www/html/

WORKDIR /var/www/html/

# copy index.html to /var/www/html/

COPY . .

#start the service

CMD ["/usr/sbin/apachectl/" ".D" "FOREGROUND"]