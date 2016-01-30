#!/bin/bash

function download_to(){
	echo $#
	if [ 2 != $# ]
	then
		echo "down_url,install_dir must be specified !"
		return -1
	fi

	SOURCE_URL=$1
	INSTALL_DIR=$2
	TAR_FILE=${SOURCE_URL##*/}


	cd  ${INSTALL_DIR}
	wget -O ${TAR_FILE} ${SOURCE_URL}

	return 0
}