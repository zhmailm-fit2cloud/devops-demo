mvn clean package -Dmaven.test.skip=true

docker build -t registry.fit2cloud.com/north/miao/devops:${branch} .
docker push registry.fit2cloud.com//north/miao/devops:${branch}

