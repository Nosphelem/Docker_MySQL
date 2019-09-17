# SETTING THE ENVIRONEMENT IMAGE TO USE
FROM mysql:latest

# SETTING THE ENVIRONMENT PARAMETERS
ENV MYSQL_DATABASE company
ENV MYSQL_USER other_root
ENV MYSQL_PASSWORD root

# SETTING THE DIRECTORY TO COPY IN THE CONTAINER AND THE SCRIPT TO RUN AT START
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/