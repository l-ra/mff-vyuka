#!/bin/bash

docker run --rm -it -u $(id -u):$(id -g) -v $(realpath .):/documents/ asciidoctor/docker-asciidoctor:1.58.0