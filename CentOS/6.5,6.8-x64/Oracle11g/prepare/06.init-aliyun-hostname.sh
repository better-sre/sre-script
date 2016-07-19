#!/usr/bin/env bash


# 输出服务器原默认配置参数:
function show_default_config() {
    echo "the server default config:"
    echo "*******************************"
    echo "/etc/sysconfig/network:"
    echo
    sudo cat /etc/sysconfig/network

    echo "*******************************"
    echo "/etc/hosts:"
    echo
    sudo cat /etc/hosts

    echo "*******************************"
    echo "/etc/sysconfig/network-scripts/ifcfg-eth1:"
    echo
    sudo cat /etc/sysconfig/network-scripts/ifcfg-eth1

    echo "*******************************"

}



# 更改主机 hostname:
function set_db_server_hostname() {
    # /etc/sysconfig/network
    # /etc/hosts

    # backup
    sudo cp /etc/sysconfig/network /etc/sysconfig/network.bak
    sudo cp /etc/hosts /etc/hosts.bak

    # 阿里云设置:
    ALIYUN_HOSTNAME="posp-prod"
    ALIYUN_NETWORK="./aliyun-network"
    ALIYUN_HOSTS="./aliyun-hosts"

    # rename
    sudo hostname ${ALIYUN_HOSTNAME}

    # rewrite
    sudo cp ${ALIYUN_NETWORK}  /etc/sysconfig/network
    sudo cp ${ALIYUN_HOSTS}    /etc/hosts

}


# 设置静态 IP:
function set_db_server_static_ip() {
    # /etc/sysconfig/network-scripts/ifcfg-eth1

    IFCFG="/etc/sysconfig/network-scripts/ifcfg-eth1"
    ALIYUN_IFCFG="./aliyun-ifcfg-eth1"

    # rewrite
    sudo cp ${ALIYUN_IFCFG} ${IFCFG}

    # restart network
    sudo service network restart

    echo ${IFCFG}
}



show_default_config
set_db_server_hostname

# 不一定要修改,暂时注释掉
# set_db_server_static_ip

