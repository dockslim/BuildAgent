ARG BASEIMG=debian:buster
FROM ${BASEIMG}

MAINTAINER dockslim

# install gcc/cmake/ninja
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    build-essential cmake ninja-build gdb \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Create an utility to exec process as user
WORKDIR /
RUN git clone https://github.com/ncopa/su-exec.git \
 && cd /su-exec \
 && make \
 && cp su-exec /usr/bin/ \
 && cd / \
 && rm -rf su-exec

# Entrypoint/CMD
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["/bin/bash"]