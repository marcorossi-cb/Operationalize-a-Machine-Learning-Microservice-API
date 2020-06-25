#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=marcorossicb

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username $dockerpath
docker tag app-udacity $dockerpath/app-udacity

# Step 3:
# Push image to a docker repository
docker push $dockerpath/app-udacity
