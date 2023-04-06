#!/bin/bash

IMAGE='nginx-php'
BASE="/data/shares/data/bookstore/${IMAGE}"

cd $BASE

docker stop $IMAGE
docker rm $IMAGE
docker rmi $IMAGE
docker build -t ${IMAGE}:latest . --no-cache
