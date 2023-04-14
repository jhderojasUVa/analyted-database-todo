#!/bin/bash
echo "Creating ToDos database and tables if is not there..."
/opt/mssql-tools/bin/sqlcmd -U sa -P "yourStrong(!)Password" -i /start/scripts/generate_database.sql
