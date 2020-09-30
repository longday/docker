#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)

CI_NODE_V=19.03.11

docker build --tag longday/ci-node:${CI_NODE_V} .
docker push longday/ci-node:${CI_NODE_V}