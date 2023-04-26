CREATE DATABASE airflow_db;
CREATE USER airflow_user WITH PASSWORD 'airflow_pass';

ALTER USER airflow_user SET search_path = public;
ALTER DATABASE airflow_db OWNER TO airflow_user;

/*
PostgreSQL 15 requires additional privileges - execute on superuser after startup:
USE airflow_db;
GRANT ALL ON SCHEMA public TO airflow_user;
*/