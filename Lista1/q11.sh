#!/bin/bash
linhas1=$(wc -l < $1)
linhas2=$(wc -l < $2)
linhas3=$(wc -l < $3)
echo "Soma do número de linhas é: $[linhas1+linhas2+linhas3]"
