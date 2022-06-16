FROM openjdk:8

COPY ./src/main/java

WORKDIR /src/main/java

RUN ["javac", "KafkaDockerApplication.java"]

ENTRYPOINT ["java", "KafkaDockerApplication"]