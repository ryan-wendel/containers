#!/bin/bash

REPO=$1
TAG=$2

DIGEST=$(curl -v -sS -I -H 'Accept: application/vnd.docker.distribution.manifest.v2+json' \
    -o /dev/null \
	http://127.0.0.1:8000/v2/${REPO}/manifests/${TAG} 2>&1 | \
	grep 'Docker-Content-Digest' | sed 's/.*: //')

curl -sS -X DELETE "http://127.0.0.1:8000/v2/${REPO}/manifests/${DIGEST}"

docker exec -i -t container-registry registry garbage-collect /etc/docker/registry/config.yml -m
