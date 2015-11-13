#!/bin/bash
if [ -z ${1+x} ]; then 
	echo "usage: ./run.sh INSTANCE_COUNT"
else
	for (( i=1; i<=$1; i++ )) do docker run -d --name="redis_$i" -p 637$i:6379 redis ; done
fi;
echo "portmapping is prefixed with 637<INSTANCE>, e.g. use 63742 to connect to instance 42"
