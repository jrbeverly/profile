#!/bin/sh
set -ex

#
# Build
#
rm -rf public/
mkdir -p public/ public/images/

# CSS
cp -r src/css/ public/css/ 

# JS
cp -r src/js/ public/js/ 

# Content
find src/ -maxdepth 1 -type f | xargs cp -t public/
cp src/images/* public/images/
