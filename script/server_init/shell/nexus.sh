#!/bin/bash

TMP_DIR="/tmp"
NEXUS_URL="https://sonatype-download.global.ssl.fastly.net/nexus/oss/nexus-2.12.0-01-bundle.tar.gz"
FILE_NAME="neuxs"
INSTALL_DIR="/usr/local"


cd ${TMP_DIR}
wget -O ${FILE_NAME} ${FILE_NAME}.tar.gz
tar -zxvf ${FILE_NAME}.tar.gz -C ${FILE_NAME}
mv ${FILE_NAME} ${INTALL_DIR}/${FILE_NAME}



