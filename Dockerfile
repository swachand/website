FROM ubuntu:24.04
RUN apt update && apt install -y --no-install-recommends apache2
RUN rm /etc/ssl/private/ssl-cert-snakeoil.key /etc/ssl/certs/ssl-cert-snakeoil.pem
ADD . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
