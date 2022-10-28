#!/bin/bash

# Build coches-crawler image from Dockerfile
# Because docker compose have DNS problesm for some reason
# https://stackoverflow.com/questions/73601987/docker-compose-cannot-resolve-dns
docker build -t cors-anywhere .

# Once we have the image we can use docker compose to run the container
docker compose --file docker-compose.prod.yml up --remove-orphans -d