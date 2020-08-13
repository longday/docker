#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)

VERSION=12.18.3
NODE_TAG=longday/node:${VERSION}-stretch

cd dockers

docker build -f Dockerfile.${VERSION} --tag ${NODE_TAG} . || exit 1
docker push ${NODE_TAG}