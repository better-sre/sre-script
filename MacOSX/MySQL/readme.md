

# MySQL 说明:


## MySQL 启动, 登录, 退出:


```
# 后台进程,启动 mysqld
mysqld

# 前台进程,启动 mysqld
mysql.server start

# 前台,重启:
mysql.server restart

# 前台,退出:
mysql.server stop



# 连接数据库:
mysql -uroot -p 



```



## 常用 SQL 操作:

```bash



# 显示所有数据库:
mysql> show databases;


# 选择使用 XX 数据库:
mysql> use xxx-database;
 
 
# 显示数据库里的表:
mysql> show tables;


# 创建数据库
mysql> create database xxx-database;


# 执行 sql 文件
mysql> source /sql/file/path/xxx.sql;


# 退出
mysql> quit;





```