#!/bin/bash

. ./.publish-vars

cd output
rsync --progress -aiv * ${PUBLISH_HOST}:${PUBLISH_PATH}