#!/usr/bin/env bash

GIT_DIR=$(git rev-parse --git-dir)

echo "Installing hooks..."
# this command creates symlink to our pre-commit script
ln -sf ../../scripts/pre-push.sh $GIT_DIR/hooks/pre-push
ln -sf ../../scripts/pre-commit.sh $GIT_DIR/hooks/pre-commit
echo "Done!"
sleep 5