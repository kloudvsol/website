FROM ubuntu
RUN apt-get update 
RUN apt-get install -y apache2 curl net-tools zip
COPY ./bliss.zip /tmp
RUN unzip /tmp/bliss.zip
RUN cp -r /tmp/bliss-html/* /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80


