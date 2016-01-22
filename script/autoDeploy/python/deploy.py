#!/usr/bin/env python
# -*- coding: utf-8 -*-

' auto deploy '

__author__ = 'wengyingjian'

import os
import sys
import ssh

def trim(str) :
	return "".join(str.split()).split(',')[0]

#配置
deployConfig = {}
#默认配置文件
configFile = "deploy.properties"
#get sys args
args=sys.argv

#如果有指定，则使用指定配置文件
if len(args)>1 :
	configFile=args[1]

#读取配置
with open(configFile,'r') as config:
	print "reading config..."
	for line in config.readlines():
		key=trim(line.split("=")[0])
		value=trim(line.split("=")[1])
		print "    "+key+"="+value
		deployConfig[key]=value
		
HOST = deployConfig["host"]
USER_NAME = deployConfig["username"]
PASSWORD = deployConfig["password"]
SOURCE = deployConfig["source"]
CATALINA_HOME = deployConfig["catalina_home"]
TARGET = CATALINA_HOME+"/webapps/"+deployConfig["final_name"]
LOG_FILE = deployConfig["log_file"]

if not LOG_FILE : 
	LOG_FILE=CATALINA_HOME + "/logs/catalina.out"



# ssh
client = ssh.SSHClient()
client.set_missing_host_key_policy(ssh.AutoAddPolicy())
client.connect(HOST,port=22,username=USER_NAME,password=USER_NAME)

# transport file
sftp=client.open_sftp()
sftp.put(SOURCE,TARGET)

# print log
stdin, stdout, stderr = client.exec_command('tail -f '+LOG_FILE);

while 1:
	sys.stdout.write(stdout.readline())













