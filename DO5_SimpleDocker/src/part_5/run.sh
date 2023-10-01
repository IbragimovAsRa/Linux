#!/bin/bash
export DOCKER_CONTENT_TRUST=1
docker build -t nginx:part_5 -f Dockerfile .
source_dir=$(pwd)
sudo docker run -d -p  80:81  -v ""$source_dir"/nginx:/etc/nginx"   -t nginx:part_5
dockle -ak NGINX_GPGKEY -ak NGINX_GPGKEY_PATH nginx:part_5

