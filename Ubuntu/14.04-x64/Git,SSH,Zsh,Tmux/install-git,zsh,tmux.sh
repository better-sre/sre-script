#!/usr/bin/env bash

##############################################
# 说明:
#   - 系统重启后, 默认 shell 才会更改为 zsh
#   - zsh, 需要为每个用户单独设置, 一个个修改.
#   - oh-my-zsh插件,也需要为每个用户,单独下载安装.
#
##############################################


sudo apt-get update -y

sudo apt-get install -y curl wget git
sudo apt-get install -y vim
sudo apt-get install -y zsh tmux

# install oh-my-zsh
cd ~
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# change default shell
chsh -s /bin/zsh

echo $SHELL

