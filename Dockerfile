FROM postgres:15.2

ENV POSTGRES_USER="postgres"
ENV POSTGRES_PASSWORD="postgres"

COPY init.sql /docker-entrypoint-initdb.d/
