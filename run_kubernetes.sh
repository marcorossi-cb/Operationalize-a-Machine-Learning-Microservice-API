#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=marcorossicb

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run app-udacity\
    --generator=run-pod/v1\
    --image=$dockerpath/app-udacity\
    --port=80 --labels app=app-udacity

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward app-udacity 8000:80