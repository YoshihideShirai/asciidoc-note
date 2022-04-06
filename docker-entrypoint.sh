#!/bin/sh

apk update
apk add sudo

yarn global add @asciidoctor/core asciidoctor-kroki

sudo -u#${ANTORA_UID} -g#${ANTORA_GID} antora antora-playbook.yml
