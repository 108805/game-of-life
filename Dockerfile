FROM tomcat:8.0
LABEL Author="poojadevops.srinivas@gmail.com"
COPY gameoflife-web/target/*.war  /usr/local/tomcat/webapps/
EXPOSE  8080
CMD ["catalina.sh", "run"]
