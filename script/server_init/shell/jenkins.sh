#!/bin/bash

JENKINS_URL="http://ftp.yz.yamagata-u.ac.jp/pub/misc/jenkins/war/1.646/jenkins.war"
CATALINA_HOME="/usr/local/tomcat"

cd JENKINS_URL/webapps/
wget ${JENKINS_URL}

