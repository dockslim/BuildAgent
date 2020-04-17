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
    USERNAME=user

    # Create a new user
    adduser -D -u ${USERID} ${USERNAME}
    export HOME=/home/${USERNAME}
    exec /sbin/su-exec ${USERNAME} "$@"
else
    exec "$@"
fi
