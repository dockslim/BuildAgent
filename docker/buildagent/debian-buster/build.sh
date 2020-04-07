#!/usr/bin/env sh

export DOCKER_BUILDKIT=1 
docker build \
  --platform linux/amd64 \
  --build-arg BASEIMG=mcr.microsoft.com/dotnet/core/sdk:3.1-buster \
  -t dockslim/buildagent:buster-amd64 .
docker build \
  --platform linux/arm/v7 \
  --build-arg BASEIMG=mcr.microsoft.com/dotnet/core/sdk:3.1-buster-arm32v7 \
  -t dockslim/buildagent:buster-arm32v7 .
docker build \
  --platform linux/arm64/v8 \
  --build-arg BASEIMG=mcr.microsoft.com/dotnet/core/sdk:3.1-buster-arm64v8 \
  -t dockslim/buildagent:buster-arm64v8 .

