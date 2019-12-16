FROM tomcat:8
COPY ./gameoflife*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD [ "catalina.sh", "run" ]
USER root
