#!/bin/sh

ERR="Unexpected token (15:23) in views/badfile.ejs"
LOC=`echo $ERR | grep -o \(.*\)`
LINE=`echo $LOC | egrep -o [0-9]+: | egrep -o [0-9]+`
NEXT_CHAR=`echo $LOC | egrep -o :[0-9]+ | egrep -o [0-9]+`
CHAR=$(($NEXT_CHAR - 1))
PREV_CHAR=$(($CHAR - 1))
FILE=`echo $ERR | egrep -o "in (.*)" | cut -c3-`

STR=`cat $FILE | head -$LINE | tail -1`
PART1=`echo "$STR" | cut -c1-$PREV_CHAR`
PART2=`echo "$STR" | cut -c$CHAR`
PART3=`echo "$STR" | cut -c$NEXT_CHAR-`
echo "$PART1\033[41m$PART2\033[0m$PART3"
