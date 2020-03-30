#!/usr/bin/env bash

# Create dockerpath
dockerpath=asmirjahic/capstone

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username $1 --password $2 
docker tag capstone $dockerpath:latest

# Push image to a docker repository
docker push $dockerpath:latest