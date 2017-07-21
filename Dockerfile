FROM hub.linux100.cc/library/oracle-java:8-alpine

MAINTAINER triumph2008 <triumph2008@gmail.com>

RUN mkdir -p /services/module && \
    wget -P /tmp -q  http://mirror.bit.edu.cn/apache/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz  && \
    tar xzf /tmp/apache-tomcat-8.0.45.tar.gz -C /services/module && \
    ln -s /services/module/apache-tomcat-8.0.45 /services/module/tomcat && \
    rm -rf  /tmp/apache-tomcat-8.0.45.tar.gz  && \
    mkdir -p /services/webapp

ADD target/CIJD.war /services/module/tomcat/webapps/

EXPOSE 8080

ENTRYPOINT ["/services/module/tomcat/bin/catalina.sh","run"]

