#!/bin/sh

while true; do
  sleep 2;
  /usr/bin/inotifywait -qmr --event modify --format '%e' /etc/nginx | echo ""
  echo "nginx config reload"
  nginx -s reload
done &

nginx -g "daemon off;"