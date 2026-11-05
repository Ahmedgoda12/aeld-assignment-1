#!/bin/sh
# This file was generated with help from Claude (Anthropic AI assistant)
# and reviewed/tested by me, following the course guideline for referencing AI content.
if [ $# -lt 2 ]; then
    echo "Error: 2 arguments required: <filesdir> <searchstr>"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory"
    exit 1
fi

X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)


echo "The number of files are $X and the number of matching lines are $Y"