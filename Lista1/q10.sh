#!/bin/bash
read -p "Digite um número: " num
if (($num%2 == 0));then
	echo "O número $num é par."
else
	echo "O número $num é impar."
fi
