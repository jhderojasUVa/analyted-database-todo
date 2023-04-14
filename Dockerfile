# start
FROM mcr.microsoft.com/mssql/server:2019-CU15-ubuntu-20.04

# Env vars
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=yourStrong(!)Password
ENV TZ=Europe/London

# Copy create database and start script
COPY ./scripts/generate_database.sh /start/scripts/generate_database.sh
COPY ./scripts/start_mssql.sh /start/scripts/start_mssql.sh
COPY ./scripts/entrypoint.sh /start/scripts/entrypoint.sh
COPY ./scripts/generate_database.sql /start/scripts/generate_database.sql
COPY ./changelog/changelog.mssql.sql /start/scripts/changelog.mssql.sql

# Copy health check script (used on compose)
COPY ./scripts/is_mssql_running.sh /start/scripts/is_mssql_running.sh

# Set proper start user
USER mssql

# Tag it
LABEL org.opencontainers.image.source https://github.com/jhderojasUVa/analyted-database-todo

# Expose port
EXPOSE 1431
EXPOSE 1433
EXPOSE 1434

# Start DB
CMD /start/scripts/entrypoint.sh
