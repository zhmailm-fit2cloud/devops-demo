FROM registry.fit2cloud.com/fit2cloud2/fabric8-java-alpine-openjdk8-jre

MAINTAINER FIT2CLOUD <support@fit2cloud.com>

RUN mkdir -p /opt/apps

ADD target/tao-demo-app-1.0-#BUILD_NUMBER#.zip /opt/apps

ENV JAVA_APP_JAR=/opt/apps/tao-demo-app-1.0-#BUILD_NUMBER#.zip

ENV AB_OFF=true

ENV JAVA_OPTIONS=-Dfile.encoding=utf-8

HEALTHCHECK --interval=15s --timeout=5s --retries=20 --start-period=30s CMD curl -f 127.0.0.1:8080

CMD ["/deployments/run-java.sh"]
