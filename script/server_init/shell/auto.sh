#!/bin/bash

if [$CATALINA_HOME];then
	echo "tomcat already installed ! skip..."
else
	tomcat.sh
fi

if [MAVEN_HOME];then
	echo "maven already install! skip..."
else
	maven.sh
fi

