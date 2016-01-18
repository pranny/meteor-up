#!/bin/bash

set -e
# we use this data directory for the backward compatibility
# older mup uses mongodb from apt-get and they used this data directory
sudo mkdir -p /var/lib/redisdb

sudo docker pull redis:latest
set +e
sudo docker rm -f redis
set -e

sudo docker run \
  -d \
  --restart=always \
  --publish=127.0.0.1:6379:6379 \
  --volume=/var/lib/redisdb:/data/redisdb \
  --volume=/opt/redis-server/redis-server.conf:/redis-server.conf \
  --name=redis \
  redis-server /redis-server.conf