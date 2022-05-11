RUN curl -fsSLO https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz \&& tar xzvf docker-17.04.0-ce.tgz \&& mv docker/docker /usr/local/bin \&& rm -r docker docker-17.04.0-ce.tgz
FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} digital-kyc-cloud-0.0.1.jar
ENTRYPOINT ["java","-jar","digital-kyc-cloud-0.0.1.jar"]
