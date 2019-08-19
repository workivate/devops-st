FROM amazonlinux

RUN yum install -y httpd

COPY ./app /var/www/html

ENV TEST_SECRET=verysecretpassphrase

EXPOSE 80

CMD ["httpd", "-DFOREGROUND"]
