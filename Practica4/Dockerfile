FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=tienda

COPY schema.sql /docker-entrypoint-initdb.d/01_schema.sql
COPY escenario1.sql escenario2.sql escenario3.sql /scripts/
