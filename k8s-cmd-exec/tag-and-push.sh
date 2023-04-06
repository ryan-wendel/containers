#!/bin/bash

IMAGE='k8s-cmd-exec'

docker tag ${IMAGE}:latest 192.168.0.180:8000/${IMAGE}:latest
docker push 192.168.0.180:8000/${IMAGE}:latest
