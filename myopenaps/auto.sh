#!/bin/sh

basal=`cat enact/suggested.json | json -a rate`
echo "basal = $basal"
contin=$(awk -v basal="$basal" '{echo basal}' /dev/null)
#if (basal > 0) { print "true" } else { print "false"}}' /dev/null )
echo "contin = $contin"
if [ "$contin" == "true" ]; then
	echo "greater"
else
	echo "no"
fi
