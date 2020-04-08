ARG BASEIMG=mcr.microsoft.com/dotnet/core/sdk:3.1-alpine3.11
FROM ${BASEIMG}

# c/c++ build and utilis
RUN apk update \
 && apk add --no-cache \ 
    build-base \
    cmake \
    ninja \
    sudo \
    su-exec

# Entrypoint/CMD
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["/bin/sh"]