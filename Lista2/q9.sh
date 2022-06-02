#!/bin/bash
if [ -f num.txt ]; then
	rm num.txt
fi

RANDOM=$$
soma=0
for ((i=0;i<101;i++)); do
	echo $RANDOM >> num.txt
done
echo "Número de linhas: $(wc -l < num.txt)"
for ((i=1;i<102;i++)); do
	read num <<< $(cat num.txt | sed -n -e ${i}p)
	((soma=$soma+$num))
done
echo "Soma dos números gerados: $soma"
