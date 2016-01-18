#!/bin/bash

sudo mkdir -p /opt/<%= appName %>/
sudo mkdir -p /opt/<%= appName %>/config
sudo mkdir -p /opt/<%= appName %>/tmp
sudo mkdir -p /opt/mongodb
sudo mkdir -p /opt/redis-server

sudo chown ${USER} /opt/<%= appName %> -R
sudo chown ${USER} /opt/mongodb -R
sudo chown ${USER} /opt/redis-server -R

sudo usermod -a -G docker ${USER}