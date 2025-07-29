#!/bin/bash

#Implement various kinds of error handling and resource management.

usage()
{
echo "Usage: error_handling.sh <person>"

}

[[ $# -ne 1 ]] && usage && exit 1


echo "Hello, $1"
