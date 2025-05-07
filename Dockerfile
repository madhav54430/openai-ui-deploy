# Use the official Tomcat image
FROM tomcat:9.0

# Remove default apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file to the Tomcat webapps directory
COPY openai-ui.war /usr/local/tomcat/webapps/

# Expose the port
EXPOSE 8080

# Run Tomcat server
CMD ["catalina.sh", "run"]
