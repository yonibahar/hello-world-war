FROM tomcat
COPY /target/*.war /usr/local/tomcat/webapps/war_file/
EXPOSE 8080