

# 163 镜像源地址:

- [网易开源镜像站](http://mirrors.163.com/)

### Ubuntu 替换默认源:

- [Ubuntu镜像使用帮助](http://mirrors.163.com/.help/ubuntu.html)
- 以Wily(15.10)为例, 编辑/etc/apt/sources.list文件, 在文件最前面添加以下条目(操作前请做好相应备份)
- 或者下载相应版本的 sources.list, 覆盖/etc/apt/sources.list即可(操作前请做好相应备份)
- 版本对应:
    - lucid(10.04)
    - precise(12.04)
    - trusty(14.04)
    - utopic(14.10)
    - vivid(15.04)
    - wily(15.10)



```

deb http://mirrors.163.com/ubuntu/ wily main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ wily-security main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ wily-updates main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ wily-proposed main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ wily-backports main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ wily main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ wily-security main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ wily-updates main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ wily-proposed main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ wily-backports main restricted universe multiverse


```


### centos 替换默认源:

- [CentOS镜像使用帮助](http://mirrors.163.com/.help/centos.html)


- 首先备份/etc/yum.repos.d/CentOS-Base.repo

```bash
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup

```


- 下载对应版本repo文件, 放入/etc/yum.repos.d/(操作前请做好相应备份)
    - CentOS7
    - CentOS6
    - CentOS5

- 运行以下命令生成缓存

```bash

yum clean all
yum makecache

```
