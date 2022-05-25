#!/bin/bash
echo -e "Alguém realmente lê isso?\n"
while [ "$z" != "x" ]
do
	echo -e "Menu:\na - Liste apenas os diretórios de uma pasta\nb - Liste apenas os arquivos executáveis\nc - Liste apenas os links simbólicos\nx - Sair do script"
	read z
	if [ "$z" == "a" ];then
		echo "Diretórios:"
		ls -l | grep "^d"
	elif [ "$z" == "b" ];then
		echo "Arquivos executáveis:"
		ls -l | grep "^-rwx"
	elif [ "$z" == "c" ];then
		echo "Links simbólicos:"
		ls -l | grep "^l"
	elif [ "$z" != "a" -a "$z" != "b" -a "$z" != "c" -a "$z" != "x" ];then
		echo "Opção inválida!"
	fi
done
