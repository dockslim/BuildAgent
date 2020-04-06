ARG ALPINE_TAG=latest
FROM alpine:${ALPINE_TAG}

MAINTAINER dockslim

RUN apk update && \
    apk add --no-cache build-base cmake ninja su-exec
