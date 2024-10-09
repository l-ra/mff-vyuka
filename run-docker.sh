#!/bin/bash

podman run --rm -it \
       -v $(realpath .):/documents/ \
       -w /documents asciidoctor/docker-asciidoctor:1.58.0 /documents/generate-html.sh