FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root

VOLUME ["/var/lib/mysql"]

COPY 01_create_database.sql /docker-entrypoint-initdb.d/
COPY 02_create_tables.sql /docker-entrypoint-initdb.d/
COPY 03_create_relations.sql /docker-entrypoint-initdb.d/
COPY 04_insert_data.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
