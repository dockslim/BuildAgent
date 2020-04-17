ARG BASEIMG=debian:buster
FROM ${BASEIMG}

MAINTAINER dockslim

# install gcc/cmake/ninja
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      ca-certificates netbase gnupg dirmngr \
      curl wget openssh-client bzip2 unzip git \
      build-essential gdb cmake ninja-build pkg-config fakeroot\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Entrypoint/CMD
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["/bin/bash"]