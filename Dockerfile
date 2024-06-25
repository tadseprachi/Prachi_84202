FROM debian
RUN apt update
RUN apt install apache2 -y
copy ./index.html /var/www/html/index.html
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
