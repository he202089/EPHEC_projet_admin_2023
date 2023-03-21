FROM mysql:latest

LABEL group="2TL2-1"

RUN chown -R mysql:root /var/lib/mysql/

ENV MYSQL_DATABASE=woodytoys
ENV MYSQL_ROOT_PASSWORD=p4ssw0rd

COPY data.sql /docker-entrypoint-initdb.d/data.sql

EXPOSE 3306

CMD ["mysqld"]