FROM ubuntu

MAINTAINER Stephen Eilert "spedrosa@gmail.com"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list

RUN apt-get install -y python-software-properties python g++ make

RUN add-apt-repository ppa:chris-lea/node.js && apt-get update

RUN apt-get install -y nodejs

# We also need to install Redis

RUN apt-get install -y redis-server

RUN apt-get install -y git

RUN apt-get install -y libexpat-dev libicu-dev

ADD src/Jarvis /Jarvis

WORKDIR /Jarvis

RUN npm install && npm install node-stringprep

ADD start_hubot.sh /Jarvis/

RUN chmod +x /Jarvis/start_hubot.sh

CMD ["sh", "start_hubot.sh"]