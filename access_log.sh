#!/bin/bash

docker exec docker_web_1 alp --sum -f /var/log/nginx/access.log --aggregates="/icons/*","/history/*","/channel/*","/profile/*" --avg