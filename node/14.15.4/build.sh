#!/usr/bin/env bash

set -x
export DOCKER_BUILDKIT=1

VERSION=14.15.4
NODE_TAG=longday/node:14.15.4-buster

docker build --tag ${NODE_TAG} . || exit 1
docker push ${NODE_TAG}