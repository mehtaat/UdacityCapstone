#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build --tag=app-devops-image .
 
# List docker images
docker image ls

# Run flask app
docker run -p 80:80 app-devops-image
