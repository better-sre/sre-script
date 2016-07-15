#!/usr/bin/env bash

#1. 确认ubuntu下已安装openssh-server
sudo apt-get install -y openssh-server
#sudo apt-get install -y ssh


# 2.查看SSH服务是否打开.
# 如果看到sshd说明ssh服务已经打开
ps -e | grep ssh


# 3.如无sshd服务,输入如下命令启动服务.再次输入上述命令查看.
sudo /etc/init.d/ssh start


# 4.输入ifconfig命令,查看虚拟机IP.
# 回车显示: eth0 中 inet地址:172.16.2.132 即为虚拟机IP.
ifconfig




