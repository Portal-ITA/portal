#!/bin/bash

# Load environment variables
if [ -f .env ]; then
    set -a
    source .env
    set +a
fi

docker stop $ECOSYSTEM-http

./scripts/register.sh

docker start $ECOSYSTEM-http
