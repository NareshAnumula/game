FROM maven:3-jdk-8 
RUN  git clone https://github.com/wakaleo/game-of-life.git
RUN cd game-of-life && mvn package
COPY -r /var/lib/jenkins/workspace/exx/gameoflife-web/target/gameoflife.war  /usr/local/tomcat/webapps/

CMD [ "java", "-jar", "/game-of-life"]
