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
mkdir -p $OUTPUT_DIR

# Minify contents
docker run --rm \
        -v $ROOT_DIR:/code \
        -w /code \
        mikechernev/minify sh build/build-minify.sh

# Images
docker run --rm \
        -v $ROOT_DIR:/source \
        buffcode/docker-optipng -o7 --dir public/images/ src/images/*.png
