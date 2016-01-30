#!/bin/bash

source ./fn_download_to.sh

JAVA_URL="http://download.oracle.com/otn-pub/java/jdk/8u71-b15/jdk-8u71-linux-x64.tar.gz"
ARGS=--no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie"
INSTALL_DIR="/usr/local"
TAR_FILE="/usr/local/jdk-8u71-linux-x64.tar.gz"


fn_download_to ${JAVA_URL} ${INSTALL_DIR} ${ARGS} 
if [ $? = -1]; then
	return -1
fi

cd {INSTALL_DIR}
tar -zxvf ${TAR_FILE}

echo "#env for java
export JAVA_HOME='${JAVA_HOME}'
export PATH=${JAVA_HOME}/bin:${PATH}" >> /etc/profile
