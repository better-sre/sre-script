#!/usr/bin/env bash


# Install Oracle Java 8 JDK

cd ~
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.rpm"


sudo yum localinstall jdk-8u60-linux-x64.rpm


#rm ~/jdk-8u60-linux-x64.rpm


# 添加环境变量

sudo sh -c "echo export JAVA_HOME=/usr/java/jdk1.8.0_60/jre >> /etc/environment"