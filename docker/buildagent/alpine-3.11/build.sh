#!/usr/bin/env sh

export DOCKER_BUILDKIT=1 
docker build --platform linux/amd64 -t dockslim/buildagent-alpine:amd64 .
docker build --platform linux/arm/v7 -t dockslim/buildagent-alpine:arm32v7 .
docker build --platform linux/arm64/v8 -t dockslim/buildagent-alpine:arm64v8 .

