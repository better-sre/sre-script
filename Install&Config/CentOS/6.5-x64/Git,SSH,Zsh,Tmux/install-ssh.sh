#!/usr/bin/env bash

# install, centos 6.8 has install.
sudo yum install -y ssh

# start ssh service
sudo service sshd start

# start at boot
sudo chkconfig sshd on





