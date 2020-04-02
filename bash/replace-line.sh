#!/bin/bash

# This script let you replace a line in a FILE.
# Following are the arguments that can be passed to this script:

# Name of the file
FILE=$1
# line to search for
BEFORE=$2
# to be replaced with this
AFTER=$3

grep -r -l "${BEFORE}" ${FILE} | sort | uniq | xargs perl -e "s/${BEFORE}/${AFTER}/" -pi
