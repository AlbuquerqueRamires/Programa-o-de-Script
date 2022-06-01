#!/bin/bash
echo 'Substituição de shell é usada para executar um comando, por exemplo, ao usar echo $(date) a saida é:'
echo $(date)
echo 'Substituição de variável é usada pra exibir ou utilizar o conteudo de uma váriavel. Por exemplo ao atribuir o mesmo $(date) a variavel i, a variavel i pode ser usada pra mostrar a saida do comando date naquele momento.'
i=$(date)
echo "Saída do comando date é: $i"
