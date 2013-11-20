#!/bin/bash

/etc/init.d/redis-server start
sh bin/hubot --adapter xmpp --name jarvis
