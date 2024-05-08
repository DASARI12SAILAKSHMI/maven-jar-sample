# Use a base image with Java pre-installed
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your local machine into the container at the specified working directory
COPY . .
EXPORT 8080

# Command to run your Java application when the container starts
CMD ["java", "-jar", "Calculator-1.0-SNAPSHOT.jar"]
