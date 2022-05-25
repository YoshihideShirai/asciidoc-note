#!/bin/sh

if [ -z "$1" ];then
    PLAYBOOK="antora-playbook.yml"
else
    PLAYBOOK="$1"
fi

WORKDIR=$PWD

if [ -z $ANTORA_UID ]; then
    ANTORA_UID=0
fi

if [ -z $ANTORA_GID ]; then
    ANTORA_GID=0
fi

apk add sudo

yarn global add asciidoctor-kroki asciidoctor-emoji @antora/lunr-extension

sudo -u#${ANTORA_UID} -g#${ANTORA_GID} \
    antora "${PLAYBOOK}"
