#!/bin/bash

#dir for cache tomat.tar.gz 
TMP_DIR="/tmp"
#url to get tomcat
TOMCAT_URL="http://mirrors.noc.im/apache/tomcat/tomcat-8/v8.0.30/bin/apache-tomcat-8.0.30.tar.gz"
#tomcat archive file name
TAR_FILE_NAME="apache-tomcat-8.0.30.tar.gz"
#tomcat file directory name
PATH_NAME="apache-tomcat-8.0.30"
#where to install tomcat
CATALINA_HOME="/usr/local/tomcat"

cd $TMP_DIR
wget $TOMCAT_URL
tar -zxvf $TAR_FILE_NAME
mv $PATH_NAME ${CATALINA_HOME}

${CATALINA_HOME}/bin/startup.sh

echo "#env for tomcat
export CATALINA_HOME=${CATALINA_HOME}" >> /etc/profile
