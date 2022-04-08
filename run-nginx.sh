#!/bin/bash

docker run --name asciidoc-node-web --rm -p 80:80 -v $PWD/build/site:/usr/share/nginx/html:ro -d nginx
