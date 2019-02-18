cd /opt/fit2cloud-demo
echo going to start pull
docker pull registry.fit2cloud.com/north/miao/devops:#BUILD_NUMBER#
echo going to start run
docker run -it -p 8081:8081 registry.fit2cloud.com/north/miao/devops:#BUILD_NUMBER#
docker ps | grep registry.fit2cloud.com/north/miao/devops | grep -v grep
echo app started!
