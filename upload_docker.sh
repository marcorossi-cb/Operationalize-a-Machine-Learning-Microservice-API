#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=marcorossicb
password=Docker1996.

# Step 2:  
# Authenticate & tag
docker login --username $dockerpath -p $password
echo "Docker ID and Image: $dockerpath"
docker tag app-udacity $dockerpath/app-udacity

# Step 3:
# Push image to a docker repository
docker push $dockerpath/app-udacity
