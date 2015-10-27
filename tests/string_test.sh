#!/bin/sh
#
# script for demonstrating some string tests -z and -n
#

strEmpty=""
strNotEmpty='"no its not" as in Phantasm'

if [ -z "${strEmpty}" ] ; then
    echo "$strEmpty is empty"
fi

if [ -n "${strNotEmpty}" ] ; then
    echo "$strNotEmpty is not empty"
fi
