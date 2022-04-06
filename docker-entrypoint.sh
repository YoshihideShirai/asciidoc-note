#!/bin/sh

if [ -z $ANTORA_UID ]; then
    ANTORA_UID=0
fi

if [ -z $ANTORA_GID ]; then
    ANTORA_GID=0
fi

apk update
apk add sudo

yarn global add @asciidoctor/core asciidoctor-kroki @antora/lunr-extension

sudo -u#${ANTORA_UID} -g#${ANTORA_GID} antora antora-playbook.yml
