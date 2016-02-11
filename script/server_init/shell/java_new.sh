#!/bin/bash

INSTALL_DIR="/usr/local"
TAR_FILE="/usr/local/jdk-8u71-linux-x64.tar.gz"
DIR_NAME="jdk-8u71-linux-x64"


tar -zxvf ${TAR_FILE} -C ${INSTALL_DIR}

echo "#env for java
export JAVA_HOME='${INSTALL_DIR}/${DIR_NAME}/bin'
export PATH=${JAVA_HOME}/bin:\${PATH}" >> /etc/profile
