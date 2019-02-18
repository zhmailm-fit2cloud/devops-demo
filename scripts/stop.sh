#!/bin/bash
echo going to stop app
docker stop $(docker ps | grep registry.fit2cloud.com/north/miao/devops | awk "{print $1}") | bash
processesNum=`docker ps | grep registry.fit2cloud.com/north/miao/devops | grep -v grep | wc -l | sed 's/ //g'`
if [ "$processesNum" == "0" ];then
    echo stopped app successfully!
    exit 0
else
    echo stopped app failed!
    exit 1
fi 
