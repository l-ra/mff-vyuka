#!/bin/bash

REVEALJS_URL=https://github.com/hakimel/reveal.js/archive/master.zip

DIR=$(realpath $(dirname $0))

OUTPUT=$DIR/output
CACHE=$DIR/cache

mkdir -p $CACHE
mkdir -p $OUTPUT/reveal.js/dist

if [ ! -f $CACHE/reveal.js-master/dist/reveal.css ]; then
  curl -L $REVEALJS_URL -o $CACHE/revealjs.zip
  unzip -o  $CACHE/revealjs.zip -d $CACHE
fi

cp -ar $CACHE/reveal.js-master/dist/* $OUTPUT/reveal.js/dist/
cp -ar img/ $OUTPUT
cp simple-noto.css $OUTPUT/reveal.js/dist/theme/

cd slides

for i in prednaska-*.adoc; do
  echo processing $i
  asciidoctor-revealjs -D $OUTPUT $i
done 


