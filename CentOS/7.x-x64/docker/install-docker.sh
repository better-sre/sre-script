#!/usr/bin/env bash


uname -r
#3.10.0-123.el7.x86_64


sudo yum update -y

curl -fsSL https://get.docker.com/ | sh


# 启动 daemon:
sudo service docker start

# 测试 hello-world:
sudo docker run hello-world

