FROM tomcat:8
COPY /var/lib/jenkins/workspace/exx/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD [ "catalina.sh", "run" ]
USER root
