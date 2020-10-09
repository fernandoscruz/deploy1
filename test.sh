#!/bin/sh
#apt-get update && apt-get install nodejs npm -y
#npm install -g broken-link-checker@^0.7.8 wait-on@^2.1.0
nginx
wait-on http://localhost:80 --timeout 90000
blc --recursive --exclude-external http://localhost:80
