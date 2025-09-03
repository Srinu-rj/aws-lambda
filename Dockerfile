# FROM openjdk:17-jdk-slim
# WORKDIR /app
# COPY build/libs/spring-application-k8s.jar /app
# EXPOSE 8080
# CMD ["java", "-jar", "spring-application-k8s.jar"]
#



FROM maven:3.9.6-eclipse-temurin-22-jammy as build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:22-jdk
COPY --from=build /target/aws-lambda.jar aws-lambda.jar
EXPOSE 1199
ENTRYPOINT ["java", "-jar", "aws-lambda.jar"]