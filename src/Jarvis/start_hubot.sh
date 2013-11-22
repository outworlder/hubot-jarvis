#!/bin/bash

sh BOXEN_REDIS_URL=redis://$DB_PORT_6379_TCP_ADDR:$DB_PORT_6379_TCP_PORT bin/hubot --adapter xmpp --name jarvis
