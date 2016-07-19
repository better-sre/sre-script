#!/usr/bin/env bash


#
# 方案一:
# 将 Oracle 安装在 /home/oracle 目录下, 默认采用此方案
#
function create_user_group() {
    echo "create oracle user & dba group"
    sudo groupadd oinstall
    sudo groupadd dba
    sudo useradd -g oinstall -G dba -d /home/oracle oracle
    echo "create oracle user & group success!"

    # set oracle-user-password: [oracle]
    sudo echo "oracle" | passwd --stdin oracle

    # check:
    id oracle

}


#
# 方案二:
# 将 Oracle 安装在 /u01/app/oracle 路径下
#
function create_db_dir() {
    # create db-dir:
    sudo mkdir -p /u01/app/oracle/product/11.2.0/db_1

    sudo chown -R oracle:oinstall /u01/app
    sudo chmod -R 775 /u01/app

}



create_user_group
# create_db_dir


#
# posp
# p,3
#

