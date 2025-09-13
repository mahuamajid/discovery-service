FROM maven:3.9.9-eclipse-temurin-21 AS build

RUN mkdir -p /usr/local/apps/dicovery-service
WORKDIR /usr/local/apps/dicovery-service

ADD target/discovery-0.0.1.jar .
ENTRYPOINT ["java","-jar","discovery-0.0.1.jar"]


# docker build -t discovery-service .