# 然之 OA 系统的 docker 镜像说明:

- 然之 OA 是一套开源免费的 OA 系统, 试用感觉还可以.
- 根据官方提供的一键安装包,进行部署, 发现 和 禅道, 部署路径相互重叠.
- 为了偷懒, 制作成 docker 镜像, 这样快速解决冲突问题.
- docker 容器启动时,简单做端口映射, 就可以用啦.
- 虽然不推荐把数据库放在 docker image 里, 不过, 为了偷懒, 暂时不管.
- docker-compose.yml 里可配置参数: volume 挂载宿主机目录, 映射 MySQL 数据库路径


## 使用说明:

- 使用 docker-compose.yml 运行


### 1. 使用阿里云构建:

- [阿里云 - Docker 镜像服务](https://hpc.aliyun.com/doc/docker%E9%95%9C%E5%83%8F%E6%9C%8D%E5%8A%A1)
- [阿里云 - Docker Hub](http://dev.aliyun.com/search.html)
- [阿里云Docker镜像库](http://get.ftqq.com/6267.get)



## 参考:

- [linux用一键安装包 - 说明文档](https://www.ranzhico.com/book/install/61.html)
- [Docker 极速下载](https://get.daocloud.io/)
















