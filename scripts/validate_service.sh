#!/bin/bash

processesNum=`docker ps | grep registry.fit2cloud.com/north/miao/devops | grep -v grep | wc -l | sed 's/ //g'`
echo process number is $processesNum
if [ "$processesNum" == "1" ];then
    echo app deployed successfully!
    exit 0
else 
    echo app deployed failed!
    exit 1
fi
