#!/bin/bash

docker tag capstone-image 989407/capstone-image:latest

docker push 989407/capstone-image:latest

# SSH into the server and pull the latest image
ssh user@server "docker pull username/capstone-image:latest"

# Restart the Docker container on the server
ssh user@server "docker-compose -f /path/to/docker-compose.yml up -d"
