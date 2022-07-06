#!/bin/bash
if [ -f comandos.txt ];then
	rm comandos.txt
fi

cat history.txt | cut -d ' ' -f2 | sort | uniq >> comandos.txt

cat comandos.txt
