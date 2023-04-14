#!/bin/bash
# nohup sh -c '/start/scripts/start_mssql.sh && /start/scripts/generate_database.sh'
(sleep 15 ; /start/scripts/generate_database.sh) &
/start/scripts/start_mssql.sh
