#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)

VERSION=1.19.6-3

SERVER_TAG=longday/nginx:react-server-${VERSION}
REACT_TAG=longday/nginx:react-app-init-${VERSION}
PREACT_TAG=longday/nginx:preact-app-init-${VERSION}

docker build --tag ${SERVER_TAG} ./server || exit 1
docker build --tag ${REACT_TAG} ./react || exit 1
docker build --tag ${PREACT_TAG} ./preact || exit 1

docker push ${SERVER_TAG}
docker push ${REACT_TAG}
docker push ${PREACT_TAG}

#test
#docker run -it --rm -e "APP_DNS_RESOLVER=127.0.0.1" -e "APP_S3_PROXY_PORT=18888" ${SERVER_TAG} bash
#docker run -it --rm -e "APP_PORT=80" -e "APP_NAME=test" ${INIT_TAG} bash