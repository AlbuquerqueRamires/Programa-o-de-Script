#!/bin/bash
for arg in $*; do
	if [ -f $arg ]; then
		echo "$arg SIM"
	else		
		echo "$arg NAO"
	fi
done
