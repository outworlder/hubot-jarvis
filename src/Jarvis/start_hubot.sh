#!/bin/bash

export BOXEN_REDIS_URL=redis://$DB_PORT_6379_TCP_ADDR:$DB_PORT_6379_TCP_PORT

echo "Brain URL: $BOXEN_REDIS_URL"

bin/hubot --adapter xmpp --name jarvis
