#!/bin/bash

IMAGE='k8s-cmd-exec'
BASE="/data/nfs/docker/containers/${IMAGE}"

cd $BASE

docker stop $IMAGE
docker rm $IMAGE
docker rmi $IMAGE
docker build -t ${IMAGE}:latest . --no-cache
