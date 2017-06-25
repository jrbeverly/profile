#!/bin/sh
set -ex

#
# Build
#
rm -rf public/
mkdir -p public/ public/images/ public/fonts/

# CSS
minify -r -o public/css/ src/css/

# JS
minify -r -o public/js/ src/js/

# Content
cp src/* public/
cp src/images/* public/images/
cp -n src/fonts/* public/fonts/
