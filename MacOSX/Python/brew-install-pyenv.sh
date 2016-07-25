#!/usr/bin/env bash

##########################################################
#                  脚本文件
# 说明:
#   - 1. 本脚本包含 pyenv, pyenv-virtualenv 安装配置步骤
#   - 2. 请仔细阅读每条命令作用, 不要直接执行本脚本.
#   - 3. 包含 zsh, bash 配置文件的修改.
#   - 4. 包含 pyenv 具体操作命令
#
# 参考:
#   - https://github.com/yyuu/pyenv#homebrew-on-mac-os-x
#   - https://github.com/yyuu/pyenv-virtualenv
#
##########################################################


# 安装:
brew install pyenv
brew install pyenv-virtualenv



# 升级:
brew upgrade pyenv
brew upgrade pyenv-virtualenv



# 查看版本已过期软件:
brew outdated


# 查看可以安装的 Python 版本列表:
# pyenv install --list

# 过滤可以安装的 Python 版本列表:
pyenv install --list | grep 2.7.
pyenv install --list | grep 3.4.
pyenv install --list | grep 3.5.


# 自动列出所有版本的小版本:
# pyenv install 2.7.
# pyenv install 3.4.

# 安装 Python2.7:
pyenv install 2.7.12

# 安装 Python 3.4.5:
pyenv install 3.4.5

# 安装 Python 3.5.2:
pyenv install 3.5.2



# 查看已安装python版本:
pyenv versions



#
# 必要步骤: 初始化命令添加到 shell-profile:
#   - https://github.com/yyuu/pyenv-virtualenv 参考说明.
#   - 如下2条命令,写入 shell 配置后, 每次进入到含有.python-version的目录, 会自动激活 虚拟环境
#   - 离开含义.python-version的目录, 会自动退出虚拟环境.
#
#


# 关于 zsh 配置文件的说明:
# http://zsh.sourceforge.net/Intro/intro_3.html
#
#There are five startup files that zsh will read commands from:
#$ZDOTDIR/.zshenv
#$ZDOTDIR/.zprofile
#$ZDOTDIR/.zshrc
#$ZDOTDIR/.zlogin
#$ZDOTDIR/.zlogout

#
# 将初始化命令, 写入 zsh 配置文件(~/.zprofile, 不是 ~/zsh_profile):
echo 'eval "$(pyenv init -)"'            >> ~/.zprofile
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zprofile


# 将初始化命令, 写入 bash 配置文件(.bash_profile):
echo 'eval "$(pyenv init -)"'            >> ~/.bash_profile
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile



#
# pyenv init
# Load pyenv automatically by appending
# the following to ~/.zshrc:
#
# eval "$(pyenv init -)"
#



#
# * system (set by /Users/hhstore/.pyenv/version)
#  2.7.12
#  3.4.5
#  3.5.2
#
#
# 默认使用 pyenv 安装 python 的存储路径:
# ~/.pyenv/versions
#



# 切换全局默认版本:
pyenv global system

# 将当前项目路径下的 Python 环境设置为 指定版本:
pyenv local 2.7.12

# 查看当前项目路径下 python 指定版本:
pyenv version
python --version



# 卸载某个版本:
# pyenv uninstall x.x.x


# 创建虚拟机环境:
pyenv virtualenv 2.7.12 vpyenv27-app1
pyenv virtualenv 3.4.5 vpyenv34-app1



# 查看虚拟环境列表:
pyenv virtualenvs

# 激活虚拟环境:
pyenv activate vpyenv27-app1

# 退出虚拟环境:
pyenv deactivate

# 删除虚拟环境:
rm -rf ~/.pyenv/versions/vpyenv27-xxx






