#!/bin/bash

docker exec docker_web_1 rm /var/log/nginx/access.log
docker exec docker_web_1 rm /var/log/nginx/error.log
docker exec docker_web_1 rm /var/cache/nginx/*

docker exec docker_web_1 nginx -s reload
docker exec docker_db_1 cp /dev/null /var/log/mysql/slow.log
docker-compose up bench