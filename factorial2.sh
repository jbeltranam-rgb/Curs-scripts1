#!/bin/bash
if [[ $# -ne 1 ]]
then
    echo "error: se requiere un solo parametro"
    exit 1
fi

echo "vamos a calcular el Factorial de $1" 

N=$1
RESULTAT=1

for ((i=1; i<=N; i++))
do
    RESULTAT=$((RESULTAT * i))
done

echo "Factorial es: $RESULTAT"