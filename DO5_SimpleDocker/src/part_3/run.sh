#!/bin/bash

docker run -d -p 80:81 nginx

contr_id=$(docker ps -q -n 1)

docker cp ./server/server.c $contr_id:/
docker cp ./nginx/nginx.conf $contr_id:/etc/nginx/nginx.conf
docker exec $contr_id nginx -s reload
docker exec $contr_id apt update
docker exec $contr_id apt-get install -y gcc spawn-fcgi libfcgi-dev
docker exec $contr_id gcc server.c -lpthread -lfcgi -o server
docker exec $contr_id spawn-fcgi -p 8080 ./server
