cd /opt/fit2cloud-demo
echo going to start app
docker pull registry.fit2cloud.com/north/miao/devops:#BUILD_NUMBER#
docker run -it registry.fit2cloud.com/north/miao/devops:#BUILD_NUMBER#
echo app started!
ps aux | grep /opt/fit2cloud-demo/tao-demo-app-1.0.jar | grep -v grep
