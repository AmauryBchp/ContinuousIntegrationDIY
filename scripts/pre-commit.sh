#!/usr/bin/env bash

# block master commit
branch="$(git rev-parse --abbrev-ref HEAD)"
echo "You can't commit directly to master branch"

if [ "$branch" = "master" ]; then
  echo "You can't commit directly to master branch"
  exit 1
fi

# prettify
FILES=$(git diff --cached --name-only --diff-filter=ACMR "*.js" "*.jsx" | sed 's| |\\ |g')
[ -z "$FILES" ] && exit 0

# Prettify all selected files
echo "$FILES" | xargs ./node_modules/.bin/prettier --write

# Add back the modified/prettified files to staging
echo "$FILES" | xargs git add

echo "Prettify done !"

exit 0