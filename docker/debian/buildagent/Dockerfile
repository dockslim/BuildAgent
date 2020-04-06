ARG DEBIAN_TAG=buster
FROM debian:${DEBIAN_TAG}

MAINTAINER dockslim

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get install -y build-essential cmake ninja-build
