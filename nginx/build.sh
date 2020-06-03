#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)

VERSION=1.17.6

ASP_TAG=longday/nginx:${VERSION}-alpine-lua

docker build -f Dockerfile.lua.run --tag ${ASP_TAG} .
docker push ${ASP_TAG}

