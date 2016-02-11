#！/bin/bash
#Mysql install scripts
#Author：AnchNet_Nay
#Mysql root密码为空
# 进入mysql数据库命令：mysql -u root -p

yum -y install mysql mysql-server mysql-devel php-mysql 
chkconfig --levels 235 mysqld on
/etc/init.d/mysqld start
