#!/bin/bash

rm -rf build
docker run -e ANTORA_UID=$(id -u) -e ANTORA_GID=$(id -g) -v $PWD:/antora:Z --rm -t --entrypoint=/antora/docker-entrypoint.sh antora/antora

