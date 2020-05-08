#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)

ASP_ROOT=${ROOT}/asp/3.1-alpine
ASP_TAG=longday/asp-net-core:3.1

ASPNODE_ROOT=${ROOT}/asp-nodejs/3.1-alpine
ASPNODE_TAG=longday/asp-net-core-nodejs:3.1


MAKE_ASP () {
    TYPE=$1
    cd ${ASP_ROOT}/${TYPE}
    docker build --tag ${ASP_TAG}-${TYPE} .
    cd ${ASPNODE_ROOT}/${TYPE}
    docker build --build-arg BASE="${ASP_TAG}-${TYPE}" --tag ${ASPNODE_TAG}-${TYPE} . 
    docker push ${ASP_TAG}-${TYPE}
    docker push ${ASPNODE_TAG}-${TYPE}
}


MAKE_ASP build
MAKE_ASP dev
MAKE_ASP run

