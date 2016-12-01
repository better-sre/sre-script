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

# 方法1:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 方法2:
# curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# 方法3:
# wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh


# change default shell
chsh -s /bin/zsh

echo $SHELL


