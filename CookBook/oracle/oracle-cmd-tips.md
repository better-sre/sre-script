
## oracle 常用命令:





```bash

# 测试 连接成功:

sqlplus / as sysdba;
sqlplus posp/posp;
sqlplus posp/posp as sysdba;


startup
quit;



# 关闭数据库实例:
su - oracle
sqlplus /nolog
conn /as sysdba

shutdown immediate

exit


# 启动数据库实例: 
su - oracle
sqlplus /nolog
conn /as sysdba

startup

exit


# 启动监听:
lsnrctl start
exit

# 关闭监听:
lsnrctl stop
exit


```


