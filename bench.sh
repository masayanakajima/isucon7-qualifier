#!/bin/bash

docker exec docker_web_1 rm /var/log/nginx/access.log
docker exec docker_web_1 rm /var/log/nginx/error.log
docker exec docker_web_1 nginx -s reload
docker-compose up bench