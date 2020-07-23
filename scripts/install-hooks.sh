#!/usr/bin/env bash

GIT_DIR=$(git rev-parse --git-dir)

echo "Installing hooks..."
# this command creates symlink to our pre-commit script
ln -s ../../scripts/pre-push.sh $GIT_DIR/hooks/pre-push
ln -s ../../scripts/pre-commit_master.sh $GIT_DIR/hooks/pre-commit_master
ln -s ../../scripts/pre-commit_prettify.sh $GIT_DIR/hooks/pre-commit_prettify
echo "Done!"
sleep 5