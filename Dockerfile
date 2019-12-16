FROM tomcat:8
COPY /e/practise/NARESH/game-of-life /usr/local/tomcat/webapps/
EXPOSE 8080
CMD [ "catalina.sh", "run" ]
USER root
