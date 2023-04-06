#!/bin/bash

BASE='/volume1/data/dev/containers/ssh'

cd $BASE

docker stop ssh-tunnel
docker rm ssh-tunnel
docker rmi ssh-tunnel
docker build -t ssh-tunnel:latest . --no-cache
