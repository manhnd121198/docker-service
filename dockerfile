FROM maven:3.8.6-jdk-8
COPY pom.xml /usr/local/service/pom.xml
COPY src /usr/local/service/src
WORKDIR /usr/local/service
RUN mvn clean install
RUN mvn package
CMD ["java","-jar","target/kafka-docker.jar"]