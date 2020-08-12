#!/usr/bin/env bash
set -x
trap 'echo "Exit"; exit 1' INT
ROOT=$(pwd)

VERSION=0.1

TAG=longday/nginx:1.19-alpine-s3-proxy-${VERSION}

docker build --tag ${TAG} .
#docker push ${TAG}

#Test
docker run  \
        -p 80:80 \
        -e S3_ENDPOINT=https://storage.yandexcloud.net \
        -e LOCATION_PREFIX=/img \
        -e DNS_SERVER=1.1.1.1 \
        $TAG