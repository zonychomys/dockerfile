#!/usr/bin/env bash
set -e

if [ "${1#-}" != "$1" ]; then
    set -- ssserver -c /etc/shadowsocks/ss-server.json "$@"
fi

exec "$@"
