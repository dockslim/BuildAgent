#!/usr/bin/env sh

export DOCKER_BUILDKIT=1 

docker build \
  --platform linux/amd64 \
  --build-arg BASEIMG=mcr.microsoft.com/dotnet/core/sdk:3.1-alpine3.11 \
  -t dockslim/dotnet-gcc-cmake:alpine-amd64 .
