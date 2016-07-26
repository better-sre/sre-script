#!/usr/bin/env bash


brew install mysql



brew info mysql



# start:
mysql.server start

# restart:
mysql.server restart

# stop:
mysql.server stop



# 登录, 输入密码方式:
mysql -uroot -p




# error-fix:
# error: Table 'performance_schema.session_variables' doesn't exist
mysql_upgrade -u root -p --force
mysql.server restart

