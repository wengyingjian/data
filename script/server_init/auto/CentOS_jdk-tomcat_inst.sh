#!/bin/bash
#CentOS jdk+tomcat install scripts
#Author：wengyingjian
TOMCAT_URL=http://download.wengyingjian.com/src/tomcat/apache-tomcat-8.0.20.tar.gz

#install java
yum install java-1.8.0-openjdk* -y 

#install tomcat
cd /usr/local/src/
TOMCAT_Ver=8.0.20
wget ${TOMCAT_URL}

tar -vzxf apache-tomcat-${TOMCAT_Ver}.tar.gz
#启动tomcat
cd /usr/local/src/apache-tomcat-${TOMCAT_Ver}/bin
./startup.sh
#添加开机自启
echo "/usr/local/src/apache-tomcat-${TOMCAT_Ver}/bin/startup.sh start" >> /usr/rc.local
