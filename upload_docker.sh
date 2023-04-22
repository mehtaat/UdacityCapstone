#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=mehtaat/app-devops

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=mehtaat
docker tag app-devops-image:latest ${dockerpath}

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}
