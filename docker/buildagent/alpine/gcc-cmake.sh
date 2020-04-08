#!/usr/bin/env sh

export DOCKER_BUILDKIT=1 

docker build \
  --platform linux/amd64 \
  --build-arg BASEIMG=amd64/alpine:3.11 \
  -t dockslim/gcc-cmake:alpine-amd64 .
docker build \
  --platform linux/arm/v7 \
  --build-arg BASEIMG=arm32v7/alpine:3.11 \
  -t dockslim/gcc-cmake:alpine-arm32v7 .
docker build \
  --platform linux/arm64/v8 \
  --build-arg BASEIMG=arm64v8/alpine:3.11 \
  -t dockslim/gcc-cmake:alpine-arm64v8 .
