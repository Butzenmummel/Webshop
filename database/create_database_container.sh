#!/bin/bash

# Path to .env file
ENV_FILE="../backend/.env"

# Load environment variables from .env file
set -o allexport
source "$ENV_FILE"
set +o allexport

# Check if the container already exists
if docker container inspect fwaWebshopDB >/dev/null 2>&1; then
    # Container exists, stop and remove it
    echo "Stopping and removing existing fwaWebshopDB container..."
    docker container stop fwaWebshopDB >/dev/null
    docker container rm fwaWebshopDB >/dev/null
fi

# Start the MariaDB container
echo "Starting WebshopDB container..."
docker run -d --name fwaWebshopDB -e MYSQL_ROOT_PASSWORD=$MARIADB_PW -v mariadb_data:/var/lib/mysql -p 3306:3306 mariadb

# Execute commands inside the container
docker exec -it fwaWebshopDB bash -c "apt-get update && apt-get install -y mysql-client"

# Wait for container to start
echo "Waiting for container to start..."
sleep 5

# Execute SQL script to create database
echo "Executing DB_create.sql script..."
docker exec -i fwaWebshopDB mysql -uroot -p$MARIADB_PW < DB_create.sql
echo "Executing DB_fill.sql script..."
docker exec -i fwaWebshopDB mysql -uroot -p$MARIADB_PW < DB_fill.sql

echo "Database created successfully!"
