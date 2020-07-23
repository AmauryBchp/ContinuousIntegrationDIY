#!/usr/bin/env bash

branch="$(git rev-parse --abbrev-ref HEAD)"
echo "You can't commit directly to master branch"

if [ "$branch" = "master" ]; then
  echo "You can't commit directly to master branch"
  exit 1
fi