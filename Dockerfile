FROM tomcat:10.1-jdk17

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file (Make sure this file is committed to GitHub!)
COPY MandalayProject.war /usr/local/tomcat/webapps/ROOT.war

# Use the PORT environment variable provided by Railway
ENV PORT 8080
EXPOSE 8080

CMD ["catalina.sh", "run"]