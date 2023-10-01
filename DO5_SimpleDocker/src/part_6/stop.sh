#!/bin/bash
contr_id=$(docker ps -q -n 1)
img_id=$(docker images -q)

docker stop $contr_id
docker rm $contr_id
docker rmi -f $img_id
docker system prune --volumes -a -f

