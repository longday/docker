#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)
export DOCKER_BUILDKIT=1


VERSION=5.0.101

MAKE_ASP () {
    TYPE=$1
    TAG=longday/dotnet:${TYPE}-${VERSION}
    docker build -f Dockerfile.${TYPE} --tag ${TAG} .
    docker push ${TAG}
}

MAKE_ASP sdk
MAKE_ASP aspnet

