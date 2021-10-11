#!/bin/bash
cd /home/ec2-user/.nvm/versions/node/v16.11.0/bin/pm2
pm2 start /home/ubuntu/quoterepo/serverSide/server.js
