#!/bin/sh
set -e

# 
# Variables
#
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"

#
# Build
#
cd $ROOT_DIR
rm -rf $OUTPUT_DIR

docker run --rm \
        -v $ROOT_DIR:/media \
        -w /media \
        jrbeverly/minify:baseimage sh build/build.sh