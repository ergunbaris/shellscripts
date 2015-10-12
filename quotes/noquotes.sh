#!/bin/sh

echo "if there are files matching globs on a shell like in 'grep r.*t /etc/passwd' \
than:"
touch r.input r.output
grep r.*t /etc/passwd
echo "'grep r.*t /etc/passwd' resolves into 'grep r.input r.output /etc/passwd' \
when there is files like r.input and r.output on the cur directory because before \
running shell looks for variables, globs and other substitions if they appear \
and the shell passes the resuklts of the substitions to the command"
rm r.*
echo "now there are no matching files to glob it runs as desired"
grep r.*t /etc/passwd
