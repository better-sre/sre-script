# 官方源:
#FROM ubuntu:14.04

# 国内镜像源
#FROM dl.dockerpool.com:5000/ubuntu:14.04

# 阿里云镜像源:
FROM registry.cn-hangzhou.aliyuncs.com/docker/ubuntu14.04

# 添加作者签名
MAINTAINER hhstore


# 版本号更新
ENV REFRESHED_AT 2016-08-15


# 安装依赖
RUN apt-get update -y && \
    apt-get install -y wget


# 下载一键安装包:
RUN wget http://dl.cnezsoft.com/ranzhi/3.5/RanZhi.3.5.zbox_64.tar.gz


# 解压到: /opt/ 目录
RUN tar zxvf RanZhi*.tar.gz -C /opt/


# 启动服务:
CMD ["/opt/zbox/zbox start "]


# 端口暴露:
EXPOSE 80    # web 服务 端口
#EXPOSE 3306    # MySQL 端口










