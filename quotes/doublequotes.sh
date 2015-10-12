#!/bin/sh

echo "in double quotes is just like single quotes but shell expands any variables that appear \
in doublequotes"
touch r.input r.output
EXAMPLE=.*
grep "r$EXAMPLE\t" /etc/passwd
rm r.*
