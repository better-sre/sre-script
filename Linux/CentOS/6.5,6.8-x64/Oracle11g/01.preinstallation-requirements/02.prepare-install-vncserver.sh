#!/usr/bin/env bash

# user: root

sudo yum groupinstall -y "X Window System"
sudo yum groupinstall -y "Desktop"
sudo yum groupinstall -y "Chinese Support"


sudo yum install -y tigervnc-server


chkconfig --level 345 vncserver on



# change to user: oralce

su oracle


cd ~


vncserver









