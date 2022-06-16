FROM maven:3.8.6-jdk-8-slim AS build

COPY src /src/java/com/manh/kafkadocker

COPY pom.xml /

RUN mvn -f /pom.xml clean package



FROM openjdk:8

EXPOSE 8085

RUN ["mvn", "clean install"]

ADD target/kafka-docker.jar kafka-docker.jar

ENTRYPOINT ["java", "-jar", "/kafka-docker.jar"]