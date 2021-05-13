#!/usr/bin/env bash

set -x
export DOCKER_BUILDKIT=1

VERSION=14.17.0
NODE_TAG=longday/node:${VERSION}-buster

docker build --tag ${NODE_TAG} . || exit 1
docker push ${NODE_TAG}