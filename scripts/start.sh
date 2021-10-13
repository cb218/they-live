#!/bin/bash
\. /home/ec2-user/.bashrc

npm install pm2@latest -g

cd /home/ubuntu/quoterepo/serverSide
pm2 start server.js