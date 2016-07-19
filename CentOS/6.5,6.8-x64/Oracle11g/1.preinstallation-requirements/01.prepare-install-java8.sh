#!/usr/bin/env bash

###############################################################
#               download and install java8
###############################################################

# download and install java8

cd ~
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.rpm"

# install
sudo yum localinstall -y jdk-8u60-linux-x64.rpm

java -version

# add java-env:
sudo sh -c "echo export JAVA_HOME=/usr/java/jdk1.8.0_60/jre >> /etc/environment"

# refresh env
sudo source /etc/environment
