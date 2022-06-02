#!/bin/bash
for i in *; do
	echo "Arquivo: $i Número de linhas: $(wc -l < $i)"
done
