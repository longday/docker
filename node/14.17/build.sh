#!/usr/bin/env bash

set -x
export DOCKER_BUILDKIT=1

# https://hub.docker.com/_/node/?tab=description&page=1&ordering=last_updated&name=buster
VERSION=14.17.1
NODE_TAG=longday/node:${VERSION}-buster

docker build --tag ${NODE_TAG} --build-arg VERSION=${VERSION} . || exit 1
docker push ${NODE_TAG}