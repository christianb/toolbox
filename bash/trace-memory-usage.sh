#!/bin/bash

# Traces usage of memory. It shows the folders from your current directory
# that consumes the most space.

sudo du -hs * | sort -rh | head -5
