
FROM tomcat:10.1-jdk17

# Remove default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Configure Tomcat to listen on Render's port
RUN sed -i 's/port="8080"/port="10000"/' /usr/local/tomcat/conf/server.xml

# Copy the application WAR file
https://mandalayproject.dockhosting.cloud/

# Expose Render's default web service port
EXPOSE 10000

# Start Tomcat
CMD ["catalina.sh", "run"]
