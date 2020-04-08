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
    useradd --shell /bin/bash -u ${USERID} -o -c "" -m buildagent
    export HOME=/home/buildagent

    exec /usr/sbin/su-exec buildagent "$@"
else
    exec "$@"
fi
