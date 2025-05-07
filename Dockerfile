# Use an OpenJDK image (choose the version you need)
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the .war file into the container
COPY openai-ui.war /app/openai-ui.war

# Expose the port the app will run on (usually 8080 for Java apps)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "openai-ui.war"]
