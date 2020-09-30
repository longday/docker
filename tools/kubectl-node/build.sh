#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)

CI_V=3.12-1.18.9

docker build --tag longday/kubectl-node:${CI_V} .
docker push longday/kubectl-node:${CI_V}