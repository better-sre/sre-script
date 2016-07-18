#!/usr/bin/env bash

#
# install oracle require libs
# 安装 Oracle 11g 依赖的包
# x64位系统,安装64位库, 可忽略32位警告
#
function yum_install_oracle_require_libs() {
    echo "yum install libs for oracle 11g:"
    sudo yum update -y
    sudo yum install -y binutils
    sudo yum install -y compat-libcap1
    sudo yum install -y compat-libstdc++-33
    sudo yum install -y compat-libstdc++-33*.i686
    sudo yum install -y elfutils-libelf-devel
    sudo yum install -y gcc
    sudo yum install -y gcc-c++
    sudo yum install -y glibc*.i686
    sudo yum install -y glibc
    sudo yum install -y glibc-devel
    sudo yum install -y glibc-devel*.i686
    sudo yum install -y ksh
    sudo yum install -y libgcc*.i686
    sudo yum install -y libgcc
    sudo yum install -y libstdc++
    sudo yum install -y libstdc++*.i686
    sudo yum install -y libstdc++-devel
    sudo yum install -y libstdc++-devel*.i686
    sudo yum install -y libaio
    sudo yum install -y libaio*.i686
    sudo yum install -y libaio-devel
    sudo yum install -y libaio-devel*.i686
    sudo yum install -y make
    sudo yum install -y sysstat
    sudo yum install -y unixODBC
    sudo yum install -y unixODBC*.i686
    sudo yum install -y unixODBC-devel
    sudo yum install -y unixODBC-devel*.i686
    sudo yum install -y libXp
    sudo yum install -y elfutils-libelf-devel-static
    sudo yum install -y numactl-devel
    sudo yum install -y pcre-devel
    sudo yum install -y glibc.i686

}



yum_install_oracle_require_libs




