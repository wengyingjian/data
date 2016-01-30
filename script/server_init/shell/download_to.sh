#!/bin/bash

function download_to(){
	echo $#
	if [ 2 != $# ]
	then
		echo "down_url,install_dir must be specified !"
		return -1
	fi

	TMP_DIR="/tmp"
	SOURCE_URL=$1
	INSTALL_DIR=$2
	TMP_FILE=${SOURCE_URL##*/}
	FILE_NAME=${INSTALL_DIR##*/}


	cd ${TMP_DIR}
	wget -O ${TMP_FILE} SOURCE_URL
	tar -zxvf ${TMP_FILE} -C ${FILE_NAME}
	mv ${FILE_NAME} ${INSTALL_DIR}
	return 0
}