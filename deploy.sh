#!/bin/bash

# Login to Docker Hub using credentials
docker login -u rajamahendarreddy777 -p dckr_pat_Eg5J3X0S19l0qx3v3AnUI3HoEpU

# Tag the Docker image with a specific repository and tag name(our wish)
docker tag devops-build_app rajamahendarreddy777/dev

# Push the tagged Docker image to Docker Hub.
docker push rajamahendarreddy777/dev

# Start the Docker Compose services in detached mode
docker-compose up -d
