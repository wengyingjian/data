#!/bin/bash
#CentOS jenkins install scripts
#Author：wengyingjian

MAVEN_URL=http://download.wengyingjian.com/src/maven/apache-maven-3.3.9-bin.tar.gz

cd /usr/local/src/
wget ${MAVEN_URL}
tar -zxvf apache-maven-3.3.9-bin.tar.gz
echo "export M2_HOME=/usr/local/src/apache-maven-3.3.9" >> /etc/profile
echo "export PATH=\$M2_HOME/bin/:\$PATH" >> /etc/profile
source /etc/profile

#启动服务
#cd /usr/local/src/apache-tomcat-${TOMCAT_Ver}/bin
#./startup.sh
#echo "/usr/local/src/apache-tomcat-${TOMCAT_Ver}/bin/startup.sh start" >> /etc/rc.local
