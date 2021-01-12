#!/usr/bin/env bash
set -x
export DOCKER_BUILDKIT=1

VERSION=1.19.6

DOCKER_TAG=longday/nginx:${VERSION}-alpine-dev

docker build --tag ${DOCKER_TAG} .
docker push ${DOCKER_TAG}

