#!/usr/bin/env bash


# mkdir
sudo mkdir -p /usr/share/fonts/zh_CN/TrueType

# copy
sudo cp zysong.ttf /usr/share/fonts/zh_CN/TrueType/

# check:
ls /usr/share/fonts/zh_CN/TrueType

# lang:
echo "current language: " ${LANG}



