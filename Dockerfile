FROM ubuntu:20.04

RUN apt-get update -y && apt-get install -y apache2


COPY ./app/ /var/www/html

CMD ["apache2ctl" , "-D" , "FOREGROUND"]


EXPOSE 80
