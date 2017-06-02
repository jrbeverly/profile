#!/bin/sh
set -ex

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"
SRC_DIR="$ROOT_DIR/src"
OUTPUT_DIR="public"

#
# Build
#
cd $ROOT_DIR
rm -rf $OUTPUT_DIR

# Images
docker run --rm \
        -v $ROOT_DIR:/media \
        -w /media \
        jrbeverly/optipng:baseimage sh build/build-image.sh

# Minify contents
docker run --rm \
        -v $ROOT_DIR:/media \
        -w /media \
        jrbeverly/minify:baseimage sh build/build-minify.sh