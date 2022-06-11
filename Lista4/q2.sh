#!/bin/bash
if [ -f users.txt ];then
	rm users.txt
fi

cat q2.txt | cut -d ' ' -f1 | sort | uniq >> users.txt

for l in $(cat users.txt);do
	user=$l
	download=$(grep $user q2.txt | cut -d ' ' -f3)
	total=0
	for i in $download; do
		((total=$total+$i))
	done
	echo $user $total
done
