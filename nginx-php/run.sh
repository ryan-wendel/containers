#!/bin/bash

docker run --rm -ti --name='nginx-php' \
    -p 8080:8080 \
    nginx-php:latest
