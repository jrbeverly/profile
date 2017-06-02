#!/bin/sh
set -ex

#
# Build
#
mkdir -p public/images/
optipng -o7 --dir public/images/ src/images/*.png