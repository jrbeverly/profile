#!/bin/sh
set -ex

#
# Build
#
mkdir -p public
minify -r -o public src
cp src/favicon.ico public/favicon.ico
cp -n src/fonts/* public/fonts/
