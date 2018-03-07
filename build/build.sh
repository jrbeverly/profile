#!/bin/sh
set -ex

#
# Build
#
rm -rf public/
mkdir -p public/ public/images/

# CSS
minify -r -o public/css/ src/css/

# JS
minify -r -o public/js/ src/js/

# Content
find src/ -maxdepth 1 -type f | xargs cp -t public/
cp src/images/* public/images/
