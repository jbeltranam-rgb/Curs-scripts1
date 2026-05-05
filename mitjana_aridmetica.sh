#!/bin/bash

TOTAL=$#
SUMA=0

while [ $# -gt 0 ]
do
    SUMA=$((SUMA + $1))
    shift
done

MITJANA=$((SUMA / TOTAL))

echo "La mitjana de $TOTAL valors es: $MITJANA"