#!/bin/bash
\. /home/ec2-user/.bashrc

cd /home/ec2-user/quoterepo/serverSide
sudo pm2 start server.js
