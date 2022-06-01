#!/bin/bash
read -p "Digite o nome dos quatro arquivos" arq1 arq2 arq3 arq4
maior=0
arquivo=nome
for i in arq1 arq2 arq3 arq4;do
	comp=$(wc -l < $i)
	if [ $comp -gt $maior ];then
		maior=$comp
		arquivo=$i
	fi
done
echo "O arquivo como o maior numero de linhas é: $arquivo"
echo "Frase de humor (Eu não sou criativo, desculpa)"
