FROM maven:3-jdk-8 as maven
RUN  git clone https://github.com/wakaleo/game-of-life.git
RUN cd game-of-life && mvn package

FROM tomcat:8
COPY --from=maven /game-of-life/gameoflife-web/target/gameoflife*.jar /usr/local tomcat/webapps/gameoflife.war
EXPOSE 8080


