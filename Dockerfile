FROM openjdk:8

MAINTAINER "DS"

VOLUME /tmp

EXPOSE 8080

ARG JAR_FILE=target/docker-jenkins.jar

ADD ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]