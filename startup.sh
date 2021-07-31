#!/bin/bash

docker-compose down

docker rmi syskaseb/aimachine-backend
docker rmi syskaseb/aimachine-frontend
docker volume rm $(docker volume ls -q)

docker system prune --force

docker pull syskaseb/aimachine-backend
docker pull syskaseb/aimachine-frontend

docker-compose up -d
