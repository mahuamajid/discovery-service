FROM maven:3.9.9-eclipse-temurin-21 AS build

RUN mkdir -p /usr/local/apps/dicovery
WORKDIR /usr/local/apps/dicovery

ADD target/discovery-0.0.1.jar .
ENTRYPOINT ["java","-jar","discovery-0.0.1.jar"]


# docker build -t discovery-service .