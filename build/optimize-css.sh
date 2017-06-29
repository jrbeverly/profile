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
echo "Entering node container."
echo "Use 'npm install -g uncss' to start."
docker run -it --rm \
        -v $DIR_ROOT:/media \
        -w /media \
        node:0.12.14-wheezy sh