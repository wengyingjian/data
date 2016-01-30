#!/bin/bash

source ./download_to.sh

download_to http://aab/aa.a.gz.tar /usr/local/apache

echo $?
