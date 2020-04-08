#!/usr/bin/env sh

export DOCKER_BUILDKIT=1 
docker build \
  --platform linux/amd64 \
  --build-arg BASEIMG=amd64/buildpack-deps:buster-scm \
  -t dockslim/gcc-cmake:buster-amd64 .
docker build \
  --platform linux/arm/v7 \
  --build-arg BASEIMG=arm32v7/buildpack-deps:buster-scm \
  -t dockslim/gcc-cmake:buster-arm32v7 .
docker build \
  --platform linux/arm64/v8 \
  --build-arg BASEIMG=arm64v8/buildpack-deps:buster-scm \
  -t dockslim/gcc-cmake:buster-arm64v8 .
