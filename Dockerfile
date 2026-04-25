# Step 1: Use an official Java runtime as a parent image
FROM eclipse-temurin:17-jdk-alpine

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the compiled .jar file from your build folder to the container
# Note: Spring Boot usually names the file in the 'target' folder
COPY target/*.jar app.jar

# Step 4: Tell the container to run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]