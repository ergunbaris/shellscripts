#!/bin/sh

echo the number of arguments at the begining: $#
echo Argument: $1
shift 
echo calling shift is like poping out every argument from the stack
echo Argument: $1
echo after calling shift the number of arguments also changed: $# so be carefull!
