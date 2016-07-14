#!/usr/bin/env bash


# copy
sudo cp ./nginx.repo /etc/yum.repos.d/


sudo yum update -y

sudo yum search nginx

# install
sudo yum install -y nginx


nginx -v
# nginx version: nginx/1.10.1


