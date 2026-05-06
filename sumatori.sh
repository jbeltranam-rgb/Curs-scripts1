#!/bin/bash

if [[ $# -ne 1 ]]
then
    echo "error: se requiere un solo parametro"
    exit 1
fi

echo "vamos a calcular el sumatorio de $1"

n=$1
SUMA=0

for (( i=1;i<=n;i++ ))
do
    SUMA=$((SUMA+i))
done

echo "El valor del sumatorio es: $SUMA"


exit 0