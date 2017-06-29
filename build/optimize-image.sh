#!/bin/sh
set -e

# 
# Variables
#
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
DIR_ROOT="$(dirname $DIR)"

#
# Run
#
echo "Entering optipng container."
echo "Navigate to images to optimize using 'optipng'."
docker run -it --rm \
        -v $DIR_ROOT:/media \
        -w /media \
        jrbeverly/optipng:baseimage sh