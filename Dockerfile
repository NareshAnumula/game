FROM maven:3-jdk-8 
RUN  git clone https://github.com/wakaleo/game-of-life.git
RUN cd game-of-life && mvn package 
EXPOSE 8080
ENTRYPOINT [ "Java","-jar"]
CMD [ "/gameoflife.war"]
