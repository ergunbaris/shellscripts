#!/bin/sh
#
# This script is to demonstrate output of command can be directed to a filedescriptor
# other than 0,1,2 which are stdin,stdout,stderr respectively

# again this script involves some redirection over file descriptors
# call it by sourcing

# exec it is used to run it on the calling process rather than a forked one
exec 3< /etc/hosts; while read -u3 ip hosts; do echo $ip $hosts;done
