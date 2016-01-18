#!/bin/bash

set -e
sudo docker pull redis:latest

set +e
sudo docker rm -f redis

set -e
sudo docker run \
  -d \
  --restart=always \
  --publish=127.0.0.1:6379:6379 \
  --volume=/opt/redis-server/redis-server.conf:/redis-server.conf \
  --name=redis \
  redis redis-server /redis-server.conf