# Use a base image with Java 11 and Maven installed
FROM maven:3.8.4-jdk-11 as builder

# Copy the project's source code from the subdirectory to the container
COPY ./ci-projeto /app
WORKDIR /app

# Build the project with Maven
RUN mvn clean package

# Use a smaller base image with only Java 11 installed
FROM adoptopenjdk:11-jre-hotspot

# Copy the JAR file from the builder stage to the final image
COPY --from=builder /app/target/ci-projeto-0.0.1-SNAPSHOT.jar /app.jar
# Set the entrypoint to run the application when the container starts
ENTRYPOINT ["java", "-jar", "/app.jar"]