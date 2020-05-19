#!/bin/bash

cd /path/workdir
# cd C:/path/workdir

BRANCH="master_maria"
LAST_UPDATE=`git show --no-notes --format=format:"%H" $BRANCH | head -n 1`
LAST_COMMIT=`git show --no-notes --format=format:"%H" origin/$BRANCH | head -n 1`

echo "Last Update: $LAST_UPDATE"
echo "Last Commit: $LAST_COMMIT"

git remote update
if [ $LAST_COMMIT != $LAST_UPDATE ]; then
        echo "Updated commits exist your branch $BRANCH"
else
        echo "No updates available"
fi
