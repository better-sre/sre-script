
#
FROM tomsik68/xampp


# 添加作者签名
MAINTAINER hhstore


# 版本号更新
ENV REFRESHED_AT 2016-08-16


RUN apt-get update -y && \
    apt-get install -y git


#
RUN mkdir /www
RUN ln -s /www /opt/lampp/htdocs/


# 下载源码:
RUN git clone git@git.oschina.net:smeoa/smeoa.git /www/oa


RUN chmod 777 /www/oa/index.php
RUN chmod 777 /www/oa/install.php
RUN chmod 777 /www/oa/App/Conf/db.php



