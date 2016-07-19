#!/usr/bin/env bash

############################################################
#
# 参考: https://github.com/robbyrussell/oh-my-zsh/
#
############################################################


sudo yum update -y

# install
sudo yum install -y zsh curl git

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# change default shell
chsh -s /bin/zsh

echo $SHELL


