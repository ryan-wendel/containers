#!/bin/bash

BASE='/volume1/data/dev/containers/registry'

/bin/mkdir ${BASE}/data 2>/dev/null
/usr/local/bin/docker-compose -f ${BASE}/docker-compose.yaml up --detach
