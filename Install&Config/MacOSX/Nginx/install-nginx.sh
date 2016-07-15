#!/usr/bin/env bash


sudo brew update
brew install nginx


nginx -v
# nginx version: nginx/1.8.0


# 配置:
# cd /usr/local/etc/nginx


# 停止：
# sudo nginx -s quit