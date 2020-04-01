#!/bin/bash

# This script let you remove a line in a FILE
# Following are the arguments that can be passed to this script:

# relative path and name of the file
FILE=$1
# Every line containing this phrase will be deleted from the file
PHRASE=$2

for line in $(find . -iname $FILE); do
     echo "$(grep -v $PHRASE $line)" > $line
done
