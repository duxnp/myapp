# FROM tomcat:7-jdk8-openjdk
FROM tomcat:jdk11
LABEL maintainer="badboybry9000@gmail.com"

ADD ./build/libs/ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]