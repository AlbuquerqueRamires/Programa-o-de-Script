#!/bin/bash
read -p "Digite a senha para teste: " senha
tamanho=$(echo ${#senha})
maiscula=$(echo $senha | tr -d {0-9} | tr -d [a-z])
numero=$(echo $senha | tr -d [A-Z] | tr -d [a-z])
if [ "$tamanho" -gt 3 -a "$maiuscula" != ' ' -a "$numero" != ' ' ];then
	echo "Senha válida!"
else
	echo "Senha inválida!"
fi
