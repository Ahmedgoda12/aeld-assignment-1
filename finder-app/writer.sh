#!/bin/sh
if [ $# -lt 2 ]; then
    echo "Error: 2 arguments required: <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

mkdir -p "$(dirname "$writefile")"

if ! echo "$writestr" > "$writefile"; then
    echo "Error: could not create $writefile"
    exit 1
fi