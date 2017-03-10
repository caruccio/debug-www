#!/bin/bash

trap 'exit 0' SIGTERM

set -ex
while true; do
    nc --listen ${PORT:-8080} <<EOF
HTTP/1.0 200 OK

Hello
EOF
done
