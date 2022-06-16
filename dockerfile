FROM openjdk:8

EXPOSE 8080

RUN ["mvn", "clean install"]

ADD target/kafka-docker.jar kafka-docker.jar

ENTRYPOINT ["java", "-jar", "/kafka-docker.jar"]