# !/bin/sh
# reset the current branch to the origin

branch=$(git rev-parse --abbrev-ref HEAD)

git reset --hard origin/$branch
