FROM hub.linux100.cc/library/tomcat8:8.0.45

MAINTAINER triumph2008 <triumph2008@gmail.com>


ADD target/CIJD.war /services/module/tomcat/webapps/

EXPOSE 8080

ENTRYPOINT ["/services/module/tomcat/bin/catalina.sh","run"]

