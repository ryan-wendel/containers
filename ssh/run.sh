#!/bin/bash

docker run --rm -ti --name='ssh-tunnel' \
    -e SSH_USER='USERNAME' \
    -e PASSWORD='PASSWORD' \
	-e SSH_PUB_KEY='ssh-ed25519 KEY_DATA eddsa-key' \
    -p 22:22 \
    ssh-tunnel:latest /bin/sh
