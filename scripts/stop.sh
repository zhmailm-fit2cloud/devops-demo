#!/bin/bash
echo going to stop app
processesNum=`docker ps | grep registry.fit2cloud.com/north/miao/devops | awk '{ print $1}'`
echo process number is $processesNum
if [ -n "$processesNum" ];then
    docker stop $processesNum
fi
validateNum=`docker ps | grep registry.fit2cloud.com/north/miao/devops | grep -v grep | wc -l | sed 's/ //
g'`
echo process validateNum is $validateNum
if [ "$validateNum" == "0" ];then
    echo stopped app successfully!
    exit 0
else
    echo stopped app failed!
    exit 1
fi