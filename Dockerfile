MAINTAINER Stephen Eilert <spedrosa@gmail.com>

FROM ubuntu

RUN sudo apt-get install node && apt-get install npm

RUN npm install -g hubot coffee-script

RUN hubot --create Jarvis
