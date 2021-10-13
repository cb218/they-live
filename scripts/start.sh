#!/bin/bash
\. /home/ec2-user/.bashrc

cd /home/ec2-user/quoterepo/serverSide
pm2 start server.js
