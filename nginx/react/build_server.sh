#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)

VERSION=0.1

TAG=longday/nginx:1.19.5-alpine-react-server-${VERSION}

docker build --tag ${TAG} ./server
docker push ${TAG}