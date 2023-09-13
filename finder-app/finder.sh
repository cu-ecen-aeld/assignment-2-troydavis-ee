#!/bin/bash


help()
{
    echo "  Usage: finder.sh [DIRECTORY] [PATTERN]"
    echo "  Search for PATTERN in each file recursively in DIRECTORY"
    echo "  Example: finder.sh /tmp/aesd/assignment1 linux"
}

# validate first positional arg was passed and is a valid dir

if [ -z "$1" ]; then
    echo "Missing [DIRECTORY]"
    help
    exit 1
fi
if [ ! -d "$1" ]; then
    echo "$1 is not a valid directory"
    help
    exit 1
fi

# validate second positional arg

if [ -z "$2" ]; then
    echo "Missing [PATTERN]"
    help
    exit 1
fi

# search for files containing search string $2 within
# directory $1, redirect stderr to omit perms issues
files_found=`grep -rl $2 ${1}/* 2> /dev/null | wc -l`
lines_found=`grep -r $2 ${1}/* 2> /dev/null | wc -l`

echo "The number of files are ${files_found} and the number of matching lines are ${lines_found}"





