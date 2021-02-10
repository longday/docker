#!/bin/sh

# while true; do
#   sleep 2;
#   /usr/bin/inotifywait -qmr --event modify --format '%e' /etc/nginx | echo ""
#   echo "nginx config reload"
#   nginx -s reload
# done &

folder=/etc/nginx/server.d/*
md5val=$(md5sum $folder 2>&1 | md5sum)

while true; do
 md5test=$(md5sum $folder 2>&1 | md5sum)
 if [[ "$md5val" != "$md5test" ]]; then
  md5val=$md5test
  echo "nginx config reload"
  nginx -s reload
 fi
 sleep 2
done &

nginx -g "daemon off;"