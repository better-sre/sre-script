
# 关于 Mac 版本的 Python 安装说明:

- Mac 系统自带 python2.6
- 使用 Python 开发,摆脱不了同时面对 python2.7, 3.4, 3.5 等版本.
- 强烈`不建议`用 brew 安装 python 各版本, 使用上会出一些小问题.
- 推荐去 [Python 官网](https://www.python.org/downloads/) 下载 64位安装包来安装.


## Python 多版本管理-`最佳实践`:

1. Python 官网下载Python2.7(或Python3.x) 版本的 64位安装包.(只需要下一个)
2. 安装 pip.(似乎官网下载的安装包,自带 pip)
3. 通过 brew 安装 `pyenv`.
4. 通过 brew 安装 `pyenv-virtualenv`.
5. 通过 pyenv 配合 pyenv-virtualenv, 来安装 python2.7, python3.4等各版本.
6. 通过 pyenv-virtualenv 创建各项目的虚拟环境, 统一管理.
7. pyenv + pyenv-virtualenv 有很多优点,目前看比 `zc.buildout`要方便.


```bash

# 安装:
# 其他使用命令参考: brew-install-pyenv.sh 脚本
brew install pyenv
brew install pyenv-virtualenv


```




