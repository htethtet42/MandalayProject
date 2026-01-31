FROM tomcat:10.1-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

COPY MandalayProject.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8083

CMD ["catalina.sh", "run"]
