#!/usr/bin/env bash

set -x
export DOCKER_BUILDKIT=1

NODE_TAG=longday/node:12.18.3-stretch

docker build --tag ${NODE_TAG} . || exit 1
docker push ${NODE_TAG}