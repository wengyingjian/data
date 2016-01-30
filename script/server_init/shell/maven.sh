#!/bin/bash

TMP_DIR="/tmp"
MAVEN_URL="http://mirrors.hust.edu.cn/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz"
TAR_FILE_NAME="apache-maven-3.3.9-bin.tar.gz"
FILE_DIR="apache-maven-3.3.9"
MAVEN_HOME="/usr/local/maven"

cd ${TMP_DIR}
wget ${MAVEN_URL}
tar -zxvf ${TAR_FILE_NAME}
mv ${FILE_DIR} ${MAVEN_HOME}

echo "#env for maven
export MAVEN_HOME=${MAVEN_HOME}
export PATH=${MAVEN_HOME}/bin:${PATH}" >> /etc/profile


