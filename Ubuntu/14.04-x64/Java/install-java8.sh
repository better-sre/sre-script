#!/usr/bin/env bash


# 安装 java8
sudo apt-add-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer -y


# 安装 Java environment variables
sudo apt-get install oracle-java8-set-default


# 查看版本:
java -version

#java version "1.8.0_91"
#Java(TM) SE Runtime Environment (build 1.8.0_91-b14)
#Java HotSpot(TM) 64-Bit Server VM (build 25.91-b14, mixed mode)

javac -version
#javac 1.8.0_91








