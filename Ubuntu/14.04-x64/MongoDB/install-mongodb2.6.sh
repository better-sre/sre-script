#!/usr/bin/env bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

sudo echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update -y


# 安装:
#sudo apt-get install -y mongodb-org

sudo apt-get install -y \
    mongodb-org=2.6.0 \
    mongodb-org-server=2.6.0 \
    mongodb-org-shell=2.6.0 \
    mongodb-org-mongos=2.6.0 \
    mongodb-org-tools=2.6.0


# 查看版本:
mongo --version

#MongoDB shell version: 2.6.0


# 启动服务:
# sudo service mongod start

# 关闭服务:
# sudo service mongod stop




