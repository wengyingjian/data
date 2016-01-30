#!/bin/bash

# fn_download_to url install_dir
# return 0
function fn_download_to(){
	echo $#
	if [ 2 > $# ]
	then
		echo "down_url,install_dir must be specified !"
		return -1
	fi

	SOURCE_URL=$1
	INSTALL_DIR=$2
	TAR_FILE=${SOURCE_URL##*/}


	cd  ${INSTALL_DIR}

	if [ 3 == $# ]
	then 
		wget -O ${TAR_FILE} $3 ${SOURCE_URL}
	else
		wget -O ${TAR_FILE} ${SOURCE_URL}
	fi
	return 0
}
