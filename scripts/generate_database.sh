#!/bin/bash
echo "Creating ToDos if is not there..."
sqlcmd -U sa -P 'yourStrong(!)Password' -i ./scripts/generate_database.sql
