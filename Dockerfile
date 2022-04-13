FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} digital-kyc-cloud-0.0.1.jar
ENTRYPOINT ["java","-jar","/digital-kyc-cloud-0.0.1.jar"]
