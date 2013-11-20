FROM ubuntu

MAINTAINER Stephen Eilert "spedrosa@gmail.com"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y redis-server

EXPOSE 6379

ADD redis.conf /etc/redis/redis.conf

VOLUME /var/lib/redis

CMD ["/usr/bin/redis-server", "/etc/redis/redis.conf"]