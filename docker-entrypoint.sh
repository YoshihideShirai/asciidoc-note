#!/bin/sh

WORKDIR=$PWD

if [ -z $ANTORA_UID ]; then
    ANTORA_UID=0
fi

if [ -z $ANTORA_GID ]; then
    ANTORA_GID=0
fi

apk add sudo git

if [ ! -d /npm/antora-lunr-extension ]; then
    mkdir /npm
    cd /npm
    git clone -b bugfix-lunr-language-ja-doesnt-work https://gitlab.com/yoshihide.shirai/antora-lunr-extension.git
    cd antora-lunr-extension
    npm i
    cd $WORKDIR
fi

yarn global add asciidoctor-kroki /npm/antora-lunr-extension/
# @antora/lunr-extension

sudo -u#${ANTORA_UID} -g#${ANTORA_GID} antora antora-playbook.yml
