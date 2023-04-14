#!/bin/bash

IS_RUNNING=$(ps aux | grep /opt/mssql/bin/sqlservr | grep Sl | nl)

if [ -z  "$IS_RUNNING" ]
then
    echo "FAIL: DB IS NOT running..."
    exit 1
else
    echo "SUCCESS: DB IS running..."
    exit 0
fi
