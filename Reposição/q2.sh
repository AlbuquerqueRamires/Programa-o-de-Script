#!/bin/bash
if [ -f num.txt ]; then
	rm num.txt
fi

RANDOM=$$

for ((i=0;i<11;i++));do
	echo $RANDOM >> num.txt
done
echo "Total de linhas de num.txt: $(wc -l < num.txt)"

soma=0
for ((i=1;i<12;i++)); do
	read num <<< $(cat num.txt | sed -n -e ${i}p)
	((soma=$soma+$num))
done
echo "Soma dos números contidos em num.txt: $soma"
