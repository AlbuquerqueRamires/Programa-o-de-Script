#!/bin/bash
read -p "Digite a senha para teste: " senha
echo "$senha" > senha.txt
if [ 'tr -d {0-9} < senha.txt' != '' ];then
	echo "Válido"
fi
