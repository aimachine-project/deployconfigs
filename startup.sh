#!/bin/bash

docker-compose down

docker rmi syskaseb/aimachine-backend
docker rmi syskaseb/aimachine-frontend
docker rmi syskaseb/aimachine-ai
docker rmi nginx:mainline-alpine
docker volume rm $(docker volume ls -q)

docker system prune --force

docker-compose up -d
