#!/usr/bin/env bash

# Mac osx 自带python2.7.10
# 安装python2.7.11

sudo chown -R `whoami` /usr/local

brew uninstall -f python

#sudo rm -rf `brew --cache`
#mkdir `brew --cache`

brew cleanup

# 安装:
brew install python


# 覆盖 旧的 python-link
brew link --overwrite python


