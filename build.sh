#!/bin/bash

rm -rf build
docker run \
    -e ANTORA_UID=$(id -u) -e ANTORA_GID=$(id -g) \
    -v $PWD:/antora:Z \
    --workdir /antora \
    --rm -t --entrypoint=/antora/docker-entrypoint.sh node:lts-bullseye

#    -v $PWD/../antora-lunr-extension:/npm/antora-lunr-extension \
