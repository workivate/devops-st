FROM amazonlinux

RUN yum install -y httpd

COPY ./app /var/www/html

EXPOSE 80

CMD ["httpd", "-DFOREGROUND"]
