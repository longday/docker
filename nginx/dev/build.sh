#!/usr/bin/env bash
set -x
export DOCKER_BUILDKIT=1

VERSION=1.21.0

DOCKER_TAG=longday/nginx:alpine-dev-${VERSION}

docker build --tag ${DOCKER_TAG} --build-arg VERSION=${VERSION} .
docker push ${DOCKER_TAG}

