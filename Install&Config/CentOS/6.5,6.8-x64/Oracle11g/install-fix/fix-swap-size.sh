#!/usr/bin/env bash

#
# dd建立一个文件，mkswap,swapon 挂载
# 阿里云参考: https://help.aliyun.com/knowledge_detail/42534.html
# 在 readme 里, 提供的 某一系列文档, 有更好的修改实践. 注意
#
#


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








