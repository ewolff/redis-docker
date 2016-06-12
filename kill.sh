#!/bin/bash
if [ -z ${1+x} ]; then 
	echo "usage: ./kill.sh INSTANCE_COUNT"
else
	for (( i=1; i<=$1; i++ )) do docker kill "redis_$i" ; done
fi;
