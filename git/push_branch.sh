#!/bin/sh

CURRENT=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
if [ $? != 0 ]; then
    exit 1;
fi;

git push --set-upstream origin $CURRENT
