#!/usr/bin/env sh

export DOCKER_BUILDKIT=1 
docker build \
  --platform linux/amd64 \
  --build-arg BASEIMG=mcr.microsoft.com/dotnet/core/sdk:3.1-bionic \
  -t dockslim/dotnet-gcc-cmake:bionic-amd64 .
docker build \
  --platform linux/arm/v7 \
  --build-arg BASEIMG=mcr.microsoft.com/dotnet/core/sdk:3.1-bionic-arm32v7 \
  -t dockslim/dotnet-gcc-cmake:bionic-arm32v7 .
docker build \
  --platform linux/arm64/v8 \
  --build-arg BASEIMG=mcr.microsoft.com/dotnet/core/sdk:3.1-bionic-arm64v8 \
  -t dockslim/dotnet-gcc-cmake:bionic-arm64v8 .

