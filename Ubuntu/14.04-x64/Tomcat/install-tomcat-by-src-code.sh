#!/usr/bin/env bash

# 添加 tomcat 用户
sudo groupadd tomcat

sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat


cd ~

wget http://mirror.sdunix.com/apache/tomcat/tomcat-8/v8.0.23/bin/apache-tomcat-8.0.23.tar.gz


# 创建安装路径:
sudo mkdir /opt/tomcat

# 解压到安装路径:
sudo tar xvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1


cd /opt/tomcat

sudo chgrp -R tomcat conf
sudo chmod g+rwx conf
sudo chmod g+r conf/*

sudo chown -R tomcat work/ temp/ logs/


sudo update-alternatives --config java
