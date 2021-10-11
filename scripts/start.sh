#!/bin/bash
cd /home/ubuntu/quoterepo/serverSide
npm install pm2@latest -g
pm2 start server.js