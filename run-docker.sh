#!/bin/bash

docker run --rm -it \
       -u $(id -u):$(id -g) -v $(realpath .):/documents/ \
       -w /documents asciidoctor/docker-asciidoctor:1.58.0 /documents/generate-html.sh