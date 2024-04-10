#!/bin/bash

docker tag capstone-image 989407/capstone-image:latest

docker push 989407/capstone-image:latest

# SSH into the server and pull the latest image
ssh ec2-user@server "docker pull /capstone-image:latest"

# Restart the Docker container on the server
ssh ec2-user@server "docker-compose -f /path/to/docker-compose.yml up -d"
