#!/bin/bash

docker build -t nginx:part_4 -f Dockerfile .
source_dir=$(pwd)
docker run -d -p  80:81  -v ""$source_dir"/nginx:/etc/nginx"   -t nginx:part_4

