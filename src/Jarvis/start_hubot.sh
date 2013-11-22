#!/bin/bash

export BOXEN_REDIS_URL = redis://$DB_PORT_6379_TCP_ADDR:$DB_PORT_6379_TCP_PORT

echo "Redis database url: $BOXEN_REDIS_URL"

sh bin/hubot --adapter xmpp --name jarvis
