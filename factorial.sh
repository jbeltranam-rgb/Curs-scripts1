#!/bin/bash

N=$1
RESULTAT=1

for ((i=1; i<=N; i++))
do
    RESULTAT=$((RESULTAT * i))
done

echo "Factorial es: $RESULTAT"