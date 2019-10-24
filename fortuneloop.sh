#!/bin/bash
trap "exit" SIGINT
INTERVAL=$1
while :
do
  echo $(date) Writing fortune to /var/htdocs/index.html
  /usr/games/fortune > /var/htdocs/index.html
  sleep $INTERVAL
done