#!/usr/bin/env bash

if [ -z "$APP_PORT" ] ; then
    echo "APP_PORT env not set!"
    exit 1
fi

if [ -z "$APP_NAME" ] ; then
    echo "APP_NAME env not set!"
    exit 1
fi

envsubst "`printf '${%s} ' $(compgen -A variable | grep APP_)`" < nginx.tpl > nginx.conf

ENV=[$(printenv | grep REACT_APP_ | awk '{ gsub(/\"/,"\\\""); gsub("/","\\/"); printf "\"%s\",", $0 }')]
sed -i "s/\"{settings}\"/$ENV/" /app/dist/index.html

mkdir -p /apps
cp -r /app /apps/${APP_NAME}
