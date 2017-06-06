#!/bin/sh
set -ex

#
# Build
#
rm -rf public/
mkdir -p public/ public/images/ public/fonts/

minify -r -o public src
cp src/images/* public/images/
cp -n src/fonts/* public/fonts/
