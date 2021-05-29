#!/bin/bash

docker exec docker_web_1 alp ltsv --file=/var/log/nginx/access.log -m "/icons/*","/history/*","/channel/*","/profile/*" --sort=avg -o count,method,uri,avg,min,max