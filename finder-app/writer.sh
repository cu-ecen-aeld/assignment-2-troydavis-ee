#!/bin/bash

# help menu 
help()
{
    echo "  Usage: writer.sh [FILENAME] [TEXT]"
    echo "  Write TEXT to FILENAME"
    echo "  Example: writer.sh /tmp/aesd/assignment1/sample.txt ios"
}

# check if 2 positional arguments were passed
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Missing positional arguments"
    help
    exit 1
fi

# make any parent directories as needed from path in FILENAME
base_path=`dirname $1`
mkdir -p $base_path

# copy TEXT into FILENAME
echo $2 > $1
 
