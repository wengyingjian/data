#!/bin/bash

echo
"# for maven settings
export MAVEN_HOME=${MAVEN_HOME}
export PATH=${MAVEN_HOME}/bin:${PATH}"
>> /etc/profile

source /etc/profile
