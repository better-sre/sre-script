#!/usr/bin/env bash

#################################################
# 说明:
# 1. Oracle 安装, 系统必须开启 swap, 否则会出问题
# 2. 阿里云的主机, 默认没有 swap
# 3. 参考:
#       - https://bbs.aliyun.com/read/180907.html?spm=5176.7189909.0.0.Furmgw
#       - 该回答者是专业 Oracle DBA, 提供了不少解答贴, 都值得一读
#       - (另有 QQ 提供, 必要时候付费咨询一下)
#
#
#
#################################################


# 创建 swap

# 1. 创建交换分区的文件:增加1G大小的交换分区，则命令写法如下，其中的 count 等于想要的块大小。
# dd if=/dev/zero of=/home/swapfile bs=1M count=1024

# 2.设置交换分区文件:
# mkswap /home/swapfile  #建立swap的文件系统

# 3.立即启用交换分区文件:
# swapon /home/swapfile   #启用swap文件

# 4.使系统开机时自启用，在文件/etc/fstab中添加一行：
#/home/swapfile swap swap defaults 0 0


# 重启后查swap还是0
# 初始化安装时centos的用户默认都关闭了swap,
# more /etc/rc.local

# 把末尾的 swapoff -a 注释掉, 重启， swap生效



##########################################
#
# dd建立一个文件，mkswap,swapon 挂载
# 阿里云参考: https://help.aliyun.com/knowledge_detail/42534.html
# 在 readme 里, 提供的 某一系列文档, 有更好的修改实践. 注意
#
#
##########################################

# 1、创建用于交换分区的文件：
# 注： block_size、number_of_block 大小可以自定义，
# 比如 bs=1M count=1024 代表设置 1G 大小 SWAP 分区。

#dd if=/dev/zero of=/mnt/SWAP bs=block_size count=number_of_block
# 2GB
dd if=/dev/zero of=/mnt/swap bs=1M count=2048


# 2、设置交换分区文件：
mkswap /mnt/swap

free -m


# 3、立即启用交换分区文件
swapon /mnt/swap

free -m


# 检查
swapon -s










