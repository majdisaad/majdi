FROM ubuntu
RUN apt update -y
RUN apt-get install -y apache2 
RUN echo '<html><body><h1>Hello and welcome majdi saad</h1></body></html>' > /var/www/html/index.html

CMD ["apache2ctl", "-D", "FOREGROUND"]

