#!/bin/sh
# This is a simple shell script that demonstrates how to use the set -x command
# to trace the execution of a shell script
# set +xv 
debug=1
test $debug -gt 0 && echo "Debug is on
echo -n "Can you write shell scripts?  "
read answer
answer=`echo $answer  | tr [a-z] [A-Z]`
if [ $answer = Y ]
then
    echo "Great you must be a pro!!"
else
    echo "I am also learing a bit about shell scripting!!"
fi
```