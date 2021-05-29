#!/bin/bash
command=$1
docker exec -it docker_db_1 mysqldumpslow $command /var/log/mysql/slow.log | head -n 200