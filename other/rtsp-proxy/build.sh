#!/usr/bin/env bash

set -x
export DOCKER_BUILDKIT=1

VERSION=2-1
TAG=longday/other:rtsp-proxy-2.1

docker build --tag ${TAG} . || exit 1
docker push ${TAG}