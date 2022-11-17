#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Wrong number of arguments";
    exit 1;
fi;
NEW=$1


CURRENT=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
if [ $? != 0 ]; then
    exit 1;
fi;

git branch -m $CURRENT $NEW
