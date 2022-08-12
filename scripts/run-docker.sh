#!/bin/bash
CONTAINERNAME="sqltodo"

# Download and run docker container
# User: sa
# Password: yourStrong(!)Password
echo "Checking the docker image is not running..."
if [ ! "$(docker ps -q -f name=$CONTAINERNAME)" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=$CONTAINERNAME)" ]; then
        # cleanup
        echo "Container found, killing it..."
        docker rm $CONTAINERNAME
    fi
    # run your container
    echo "Starting the container, please wait..."
    docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=yourStrong(!)Password" \
           -e "TZ=Europe/London" -p 1433:1433 --name $CONTAINERNAME \
           --network analyted_network \
           -d mcr.microsoft.com/mssql/server:2019-CU15-ubuntu-20.04
fi

# Wait... until the docker container sql1 is running
echo "Waiting 30 seconds for the image to start up..."
sleep 30

# Create table if needed
echo "Creating ToDos if is not there..."
sqlcmd -U sa -P 'yourStrong(!)Password' -i ./scripts/generate_database.sql

# Finished
echo "Finished! Enjoy!"
