#!/bin/bash
echo going to stop app
ps aux | grep /opt/fit2cloud-demo/tao-demo-app-1.0.jar | grep 8081 | awk '{print "kill -9 " $2}' | bash
processesNum=`ps aux | grep /opt/fit2cloud-demo/tao-demo-app-1.0.jar | grep 8081 | grep -v grep | wc -l | sed 's/ //g'`
if [ "$processesNum" == "0" ];then
    echo stopped app successfully!
    exit 0
else
    echo stopped app failed!
    exit 1
fi 
