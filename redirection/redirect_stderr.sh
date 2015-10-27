#!/bin/sh
#
# to demonstrate that the stderr can be redirected to a file and redirected back to stderr simulataneously
# with the help of tee bash command, so watch out!
#

# I will recursively list files under /proc to demonstrate you will see permission denied errors
# and others will both be on your {pid}.stderr file and stderr device. I will mute stdout to
# eliminate annoyance by too many stdout lines.

# run this script file by sourcing so that redirection can take place in the outer shell process
# which is beacuse it will be literally the shell process running the script and not a forked process
# which is the default behaviour when run without sourcing.
# ie . .redirect_stderr
ls -lRrt /proc 1> /dev/null 2> >(tee $$.stderr >&2)
