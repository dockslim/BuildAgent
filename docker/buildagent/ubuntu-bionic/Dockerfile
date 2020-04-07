ARG BASEIMG=mcr.microsoft.com/dotnet/core/sdk:3.1-bionic
FROM ${BASEIMG}

MAINTAINER dockslim

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        build-essential cmake ninja-build \
 && rm -rf /var/lib/apt/lists/*
