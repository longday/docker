#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)

VERSION=1.19.6-2

SERVER_TAG=longday/nginx:react-server-${VERSION}
INIT_TAG=longday/nginx:react-app-init-${VERSION}

docker build --tag ${SERVER_TAG} ./server
docker build --tag ${INIT_TAG} ./init

docker push ${SERVER_TAG}
docker push ${INIT_TAG}

#test
#docker run -it --rm -e "APP_DNS_RESOLVER=127.0.0.1" -e "APP_S3_PROXY_PORT=18888" ${SERVER_TAG} bash
#docker run -it --rm -e "APP_PORT=80" -e "APP_NAME=test" ${INIT_TAG} bash