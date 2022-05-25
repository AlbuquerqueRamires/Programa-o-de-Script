#!/bin/bash
D2B=({0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1})
read -p "Entre com o endereço de IP:" ip
echo ""
for ((i=1;i<5;i++));do
	o=$(echo $ip | cut -d '.' -f$i)
	b=$(echo ${D2B[$o]})
	echo "Octeto #$i: $o em binário $b"
done	
