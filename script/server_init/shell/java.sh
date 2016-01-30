#!/bin/bash

TMP_DIR="/tmp"
JAVA_URL="http://download.oracle.com/otn-pub/java/jdk/8u71-b15/jdk-8u71-linux-x64.tar.gz"
TAR_FILE_NAME="jdk-8u71-linux-x64.tar.gz"
FILE_DIR_NAME="jdk1.8.0_71"
JAVA_HOME="/usr/local/java"

cd ${TMP_DIR}
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" ${JAVA_URL}
tar -zxvf ${TAR_FILE_NAME}
mv ${FILE_DIR_NAME} ${JAVA_HOME}

echo "#env for java
export JAVA_HOME='${JAVA_HOME}'
export PATH=${JAVA_HOME}/bin:${PATH}" >> /etc/profile
