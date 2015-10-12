#!/bin/sh

echo "in single quotes no subs takes place"
touch r.input r.output
grep 'r.*t' /etc/passwd
rm r.*
