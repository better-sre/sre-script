

## 安装 Mongodb

### 1. 参考:

- [官方文档参考:](https://docs.mongodb.org/manual/tutorial/install-mongodb-on-os-x/)


1. 如果用mongodb的GUI工具, 只支持 mongodb2.6
2. 如果用pycharm的插件,使用mongo,就可以装3.0


### 2. 关于启动方式说明:

- 设置开启启动:
    - ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
    - launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

- 普通后台启动:
    - mongod --config /usr/local/etc/mongod.conf

### 3. homebrew方式安装,默认的 数据库 存储目录:

- dbPath: /usr/local/var/mongodb

```
cat mongod.conf


systemLog:
  destination: file
  path: /usr/local/var/log/mongodb/mongo.log
  logAppend: true
storage:
  dbPath: /usr/local/var/mongodb
net:
  bindIp: 127.0.0.1


```



### 4. 安装日志:

```
➜  ~  brew install mongodb

==> Downloading https://homebrew.bintray.com/bottles/mongodb-3.0.7.el_capitan.bottle.tar.gz
######################################################################## 100.0%
==> Pouring mongodb-3.0.7.el_capitan.bottle.tar.gz
==> Caveats

To have launchd start mongodb at login:
  ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
Then to load mongodb now:
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
  
  
Or, if you don't want/need launchctl, you can just run:
  mongod --config /usr/local/etc/mongod.conf
==> Summary
🍺  /usr/local/Cellar/mongodb/3.0.7: 17 files, 158M
➜  ~


```