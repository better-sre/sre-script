


## unbuntu 安装 mongodb:

### 0. 参考:

- [官方文档 - mongodb 2.6 安装 ](https://docs.mongodb.org/v2.6/tutorial/install-mongodb-on-ubuntu/)


### 1. 常用操作:

- 连接测试:

```

$ mongo
> db.test.save( { tecadmin: 100 } )
> db.test.find()


```

### 2. 源码安装 mongodb 操作:

#### 2.0 mongodb 在Ubuntu14.04 安装

- 安装步骤,参考官方文档安装,没有问题的.
- sudo mongo 查看数据库版本号
- cat /etc/mongod.conf   查看配置文件.
- 3.0版本,数据库默认存储路径:  dbPath: /var/lib/mongodb


#### 2.1 创建数据库默认存储目录

```
cd /
sudo mkdir -p /data/db/

```

#### 2.2 启动mongodb

```

# 启动后台服务
cd /opt/mongodb/bin/
sudo ./mongod

# 启动连接
./mongo

# 查看mongodb 版本号
db.version()

```




