#!/usr/bin/env bash

if [ -z "$APP_DNS_RESOLVER" ] ; then
    echo "APP_DNS_RESOLVER env not set!"
    exit 1
fi

if [ -z "$APP_S3_PROXY_PORT" ] ; then
    echo "APP_S3_PROXY_PORT env not set!"
    exit 1
fi

if [[ $APP_S3_PROXY_PORT -gt 0 ]]; then
    envsubst "`printf '${%s} ' $(compgen -A variable | grep APP_)`" < tpls/s3.nginx > nginx.conf
else
    cat tpls/default.nginx > nginx.conf
fi

nginx -g "daemon off;"