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
    USERNAME=user
    useradd -s /bin/bash --uid ${USERID} -o -c "" -m ${USERNAME}
    export HOME=/home/${USERNAME}
    exec /sbin/runuser -u ${USERNAME} "$@"
else
    exec "$@"
fi
