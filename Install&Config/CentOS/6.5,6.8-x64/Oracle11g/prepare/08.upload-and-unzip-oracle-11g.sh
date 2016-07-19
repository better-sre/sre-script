#!/usr/bin/env bash

# upload
# scp 上传
# ftp 上传
# wget 官网下载(需要用户口令参数)
# uzip 解压


# 项目部署根目录:
DEPLOY_BASE="/2016-deploy"

sudo mkdir ${DEPLOY_BASE}
sduo chmod 777 ${DEPLOY_BASE}
cd ${DEPLOY_BASE}
pwd


unzip linux.x64_11gR2_database_1of2.zip
unzip linux.x64_11gR2_database_2of2.zip


ls


