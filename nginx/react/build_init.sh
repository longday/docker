#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)

VERSION=0.1

TAG=longday/nginx:1.19.5-alpine-react-init-${VERSION}

docker build --tag ${TAG} ./init
docker push ${TAG}


#test
#docker run -it --rm -e "APP_PORT=80" -e "APP_NAME=test" ${TAG} bash