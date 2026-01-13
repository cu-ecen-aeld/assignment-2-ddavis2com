#!/bin/bash
if [ $# -ne 2 ]
then
	echo "usage: finder.sh <filesdir> <searchstr>"
	exit 1
fi
if [ ! -d $1 ]
then
	echo "filesdir ${1} is not a directory"
	exit 1	
fi
# found an example of this google search using AI search.
NUMFILES=$(find ${1}  -maxdepth 1 -type f | wc -l)
NUMLINES=$(grep ${2} ${1}/* 2>/dev/null | wc -l)
echo "The number of files are ${NUMFILES} and the number of matching lines are ${NUMLINES}"
exit 0
