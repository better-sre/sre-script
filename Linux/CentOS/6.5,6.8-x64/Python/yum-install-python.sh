#!/usr/bin/env bash


##############################################
#                    说明:
#
# 1. 支持 阿里云 centos 6.5 x64 安装
#
#
##############################################

sudo yum update -y
sudo yum install https://centos6.iuscommunity.org/ius-release.rpm
sudo yum update -y


# search
sudo yum search python2
sudo yum search python3

# python2.7
sudo yum install -y python27

# centos6.x - 64bit install python3.4
sudo yum install -y python34u


# download pip
wget https://bootstrap.pypa.io/get-pip.py


# install pip3
python3.4 get-pip.py

# install pip2
python2.7 get-pip.py


# check:

pip2 --version

pip3 --version



# centos7.x install
#sudo yum install epel-release
#sudo yum install python34








