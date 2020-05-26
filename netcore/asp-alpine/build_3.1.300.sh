#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)

VERSION=3.1.300


cd $VERSION
ASP_TAG=longday/asp-alpine:${VERSION}
MAKE_ASP () {
    TYPE=$1
    BASE_TAG=${ASP_TAG}-${TYPE}
    NODE_TAG=${ASP_TAG}-node-${TYPE}
    docker build -f Dockerfile.base.${TYPE} --tag ${BASE_TAG}  .
    docker build -f Dockerfile.node.any --build-arg BASE="${BASE_TAG}" --tag ${NODE_TAG} . 
    docker push ${BASE_TAG}
    docker push ${NODE_TAG}
}

MAKE_ASP build
MAKE_ASP dev
MAKE_ASP run

