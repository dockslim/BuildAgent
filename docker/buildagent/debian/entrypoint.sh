#!/bin/bash
set -e

if [ -n "${PACKAGES}" ]; then
    apt-get update
	apt-get install -y --no-install-recommends $PACKAGES
fi

if [ -n "${INITCMD}" ]; then
    /bin/bash -c "${INITCMD}"
fi

if [ -n "${USERID}" ]; then
    USERNAME=buildagent
    useradd -s /bin/bash --uid ${USERID} -o -c "" -m ${USERNAME}
    export HOME=/home/${USERNAME}
    exec /usr/sbin/su-exec ${USERNAME} "$@"
else
    exec "$@"
fi
