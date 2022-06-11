#!/bin/bash
for ((i=3;i<13;i++)); do
	if [ $i == 10 ]; then
		cat q1.txt | grep -n ^ | grep ^$i | tr -s ' ' | cut -d ' ' -f5
	elif [ $i == 12 ]; then
		cat q1.txt | grep -n ^ | grep ^$i | tr -s ' ' | cut -d ' ' -f4,5
	else
		
		cat q1.txt | grep -n ^ | grep ^$i | tr -s ' ' | cut -d ' ' -f4
	fi
done

