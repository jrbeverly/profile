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
echo "Entering node container."
echo "Use 'npm install -g uncss' to start."
docker run -it --rm \
        -v $ROOT_DIR:/media \
        -w /media \
        node:0.12.14-wheezy sh