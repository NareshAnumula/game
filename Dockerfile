FROM maven:3-jdk-8 
RUN  git clone https://github.com/wakaleo/game-of-life.git
RUN cd game-of-life

CMD [ "java", "-jar", "/game-of-life"]
