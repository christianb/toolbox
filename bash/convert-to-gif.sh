#!/bin/bash

# This script convverts an input file to gif:
# https://superuser.com/questions/556029/how-do-i-convert-a-video-to-gif-using-ffmpeg-with-reasonable-quality/556031#556031

# Dependencies:
# - ffmpeg

INPUT=$1

ffmpeg -i $INPUT -vf "fps=10,scale=320:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 output.gif
