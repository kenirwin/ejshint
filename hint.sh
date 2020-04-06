#!/bin/sh

ERR="Unexpected token (15:23) in views/badfile.ejs"
LOC=`echo $ERR | grep -o \(.*\)`
LINE=`echo $LOC | egrep -o [0-9]+: | egrep -o [0-9]+`
CHAR=`echo $LOC | egrep -o :[0-9]+ | egrep -o [0-9]+`
FILE=`echo $ERR | egrep -o "in (.*)" | cut -c3-`

# STR=`cat views/badfile.ejs | head -15 | tail -1`
# PART1=`echo "$STR" | cut -c1-21`
# PART2=`echo "$STR" | cut -c22`
# PART3=`echo "$STR" | cut -c23-`
# echo "$PART1\033[41m$PART2\033[0m$PART3"
