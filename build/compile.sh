#!/bin/sh
set -e

# 
# Variables
#
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
DIR_ROOT="$(dirname $DIR)"

#
# Build
#
cd $DIR_ROOT
rm -rf $OUTPUT_DIR

docker run --rm \
        -v $DIR_ROOT:/media \
        -w /media \
        jrbeverly/minify:baseimage sh build/build.sh