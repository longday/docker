#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)

VERSION=3.1.3

ASP_ROOT=${ROOT}/asp/${VERSION}-alpine
ASP_TAG=longday/asp-net-core:${VERSION}

ASPNODE_ROOT=${ROOT}/asp-nodejs/${VERSION}-alpine
ASPNODE_TAG=longday/asp-net-core-nodejs:${VERSION}


MAKE_ASP () {
    TYPE=$1
    cd ${ASP_ROOT}/${TYPE}
    docker build --tag ${ASP_TAG}-${TYPE} .
    cd ${ASPNODE_ROOT}/${TYPE}
    docker build --build-arg BASE="${ASP_TAG}-${TYPE}" --tag ${ASPNODE_TAG}-${TYPE} . 
    #docker push ${ASP_TAG}-${TYPE}
    #docker push ${ASPNODE_TAG}-${TYPE}
}


MAKE_ASP build
MAKE_ASP dev
MAKE_ASP run

