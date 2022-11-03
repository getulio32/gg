#!/bin/bash
clear
echo "Programa para calcular numeros primos"
echo "Digite o numero que deseja calcular"
read N
S=2
R=0

while [ $S -ne $N ] ; do
        R=$(expr $N % $S)
        if [ $R -ne 0 ] ; then
                S=$(($S+1))
        else
                clear
                echo "O numero" $N "nao eh primo"
                echo "Digite Ctrl+c, para interromper!"
                sleep 10
        fi
done
if [ $S -eq $N ] ; then
        clear ; echo "O numero" $N "eh primo"
fi
