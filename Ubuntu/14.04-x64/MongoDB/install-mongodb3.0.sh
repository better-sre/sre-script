#!/usr/bin/env bash

# Ubuntu 14.04
# mongodb 3.0

echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

sudo apt-get update -y
sudo apt-get install -y --force-yes mongodb-org



