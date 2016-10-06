#!/bin/bash
if [ -z ${1+x} ]; then 
	echo "usage: ./clean.sh INSTANCE_COUNT"
else
	for (( i=1; i<=$1; i++ )) do docker rm "redis_$i" ; done
fi;
