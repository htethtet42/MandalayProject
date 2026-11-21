
FROM tomcat:10.1-jdk17

# Remove default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Configure Tomcat to listen on port 10000
RUN sed -i 's/port="8080"/port="10000"/' /usr/local/tomcat/conf/server.xml

# Copy the WAR file into Tomcat
COPY MandalayProject.war /usr/local/tomcat/webapps/ROOT.war

# Expose application port
EXPOSE 10000

# Start Tomcat
CMD ["catalina.sh", "run"]
