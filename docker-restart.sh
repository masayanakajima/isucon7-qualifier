#!/bin/bash
NAME=$1

docker stop docker_${NAME}_1
docker rm docker_${NAME}_1
docker images -a | grep isucon7-qualifier-${NAME} | awk '{print $3}' | xargs docker rmi
docker builder prune --force
docker-compose up ${NAME}