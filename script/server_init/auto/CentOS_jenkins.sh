#!/bin/bash
#CentOS jenkins install scripts
#Author：wengyingjian
JENKINS_URL=http://www.wengyingjian.com/src/jenkins/jenkins.war

cd /usr/local/src/
wget ${JENKINS_URL}
mv jenkins.war /usr/local/src/apache-tomcat-8.0.20/webapps/

#启动服务
#cd /usr/local/src/apache-tomcat-${TOMCAT_Ver}/bin
#./startup.sh
#echo "/usr/local/src/apache-tomcat-${TOMCAT_Ver}/bin/startup.sh start" >> /etc/rc.local
