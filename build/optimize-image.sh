#!/bin/sh
set -e

# 
# Variables
#
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"

#
# Run
#
echo "Entering optipng container."
echo "Navigate to images to optimize using 'optipng'."
docker run -it --rm \
        -v $ROOT_DIR:/media \
        -w /media \
        jrbeverly/optipng:baseimage sh