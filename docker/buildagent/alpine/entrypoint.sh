#!/bin/sh
set -e

if [ -n "${PACKAGES}" ]; then
    apk update && \
    apk add --no-cache $PACKAGES
fi

if [ -n "${INITCMD}" ]; then
    /bin/sh -c "${INITCMD}"
fi

if [ -n "${USERID}" ]; then
    # Create a new user
    adduser -D -u ${USERID} buildagent
    export HOME=/home/buildagent
    exec /sbin/su-exec buildagent "$@"
else
    exec "$@"
fi
