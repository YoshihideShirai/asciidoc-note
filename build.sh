#!/bin/bash

rm -rf build
docker run \
    -e ANTORA_UID=$(id -u) -e ANTORA_GID=$(id -g) \
    -v $PWD:/antora:Z \
    --workdir /antora \
    --rm -t --entrypoint=/antora/docker-entrypoint.sh antora/antora:3.0.1

#    -v $PWD/../antora-lunr-extension:/npm/antora-lunr-extension \
