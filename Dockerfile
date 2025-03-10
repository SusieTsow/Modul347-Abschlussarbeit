# Use a Maven base image to handle dependencies and build
FROM maven:3.8.5-openjdk-17 AS builder

# Copy the project source code into the container
COPY . /usr/src/myapp

# Set the working directory
WORKDIR /usr/src/myapp

# Build the application using Maven
RUN mvn clean package -DskipTests

# Use a smaller, runtime-only image
FROM eclipse-temurin:21

# Copy the built JAR file from the builder stage
COPY --from=builder /usr/src/myapp/target/*.jar app.jar

# Expose the application port (usually 8080)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]