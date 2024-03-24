# Use the official OpenJDK 8 Alpine image as the base image
FROM openjdk:8-alpine

# Expose port 8083 (adjust as needed)
EXPOSE 8083

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Maven wrapper files (pom.xml, mvnw, .mvn directory)
COPY pom.xml mvnw ./
COPY .mvn/ ./.mvn

# Ensure the Maven wrapper script has executable permission
RUN chmod +x mvnw

# Run Maven dependency resolution
RUN ./mvnw dependency:resolve

# Copy the project files into the image
COPY . .

# Run Maven install directly without the wrapper script
RUN mvn install

# Define the command to run the application when the container starts
CMD ["java", "-jar", "./target/users-api-0.0.1-SNAPSHOT.jar"]

