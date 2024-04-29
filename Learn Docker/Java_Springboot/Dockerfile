
# # Use a base image with Java pre-installed
# FROM openjdk:17-jdk-slim

# # Set the working directory inside the container
# WORKDIR /app

# # Copy the compiled Spring Boot application JAR file into the container
# COPY target/SpringBoot-0.0.1-SNAPSHOT.jar /app/SpringBoot.jar

# # Expose the port that the Spring Boot application will run on
# EXPOSE 8080

# # Command to run the Spring Boot application when the container starts
# CMD ["java", "-jar", "SpringBoot.jar"]


# # ./mvnw spring-boot:run
# # docker build -t springboot .
# # docker run -p 8088:8080 springboot


# #Build
# FROM maven:3.8.4-openjdk-17-slim AS build
# WORKDIR /app
# COPY ./ /app/
# RUN mvn package -f /app/pom.xml

# #multi-staging
# FROM openjdk:17-slim  
# WORKDIR /app
# COPY --from=build /app/target/SpringBoot-0.0.1-SNAPSHOT.jar app.jar
# EXPOSE 8080
# CMD ["java","-jar","app.jar"]



# Build stage
FROM maven:3.8.7-openjdk-18 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package -DskipTests

# Runtime stage
FROM amazoncorretto:17

ARG APP_VERSION=1.0.1

WORKDIR /app
COPY --from=build /app/target/SpringBoot-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
CMD java -jar app.jar