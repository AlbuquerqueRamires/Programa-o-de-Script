#!/bin/bash
z=" "
arquivo=" "
while [ "$z" != "q" ];do
	echo -e "Menu\nr - Digite o nome de um arquivo que será processado.\na - Remova todas as letras do arquivo.\nb - Remova todos os dígitos do arquivo.\nc - Substitua todos os caracteres que não são letras nem dígitos do arquivo por $.\nq - Saia do script."
	read z
	if [ "$z" == "r" ];then
		read -p "Digite o nome do arquivo: " arq
		if [ -f $arq ];then
			arquivo=$arq
		else
			echo "O arquivo não existe."
		fi
	elif [ "$z" == "a" ];then
		if [ "$arquivo" == " " ];then
		       echo "Nenhum arquivo válido foi atribuído."
		else
			sed 's/[A-Za-z]//g' $arquivo
		fi
	
	elif [ "$z" == "b" ];then
		if [ "$arquivo" == " " ];then
			echo "Nenhum arquivo válido foi atribuído."
		else
			sed 's/[0-9]//g' $arquivo
		fi
	elif [ "$z" == "c" ];then
		if [ "$arquivo" == " " ];then
			echo "Nenhum arquivo válido foi atribuído."
		else
			sed -E 's/[^A-Za-Z0-9]/$/g' $arquivo
		fi
	elif [ "$z" != "r" -a "$z" != "a" -a "$z" != "b" -a "$z" != "c" -a "$z" != "q" ];then
		echo "Opção inválida."
	fi

	if [ "$arquivo" != " " -a "$z" != "q" ];then
		echo -e "\nAtualmente trabalhando com o arquivo $arquivo."
	fi
done
