#!/bin/sh

STR=`cat views/badfile.ejs | head -15 | tail -1`
PART1=`echo "$STR" | cut -c1-21`
PART2=`echo "$STR" | cut -c22`
PART3=`echo "$STR" | cut -c23-`
echo "$PART1\033[41m$PART2\033[0m$PART3"
