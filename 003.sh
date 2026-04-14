#!/bin/bash

read -p "introdueix el valor de X: " X
read -p "introdueix el valor de Y: " Y

echo "Has introduït ${X} i ${Y}"

SUMA=$((X+Y))

echo "${X}+${Y}=${SUMA}"

RESTA=$((X-Y))

echo "${X}-${Y}=${RESTA}"

PRODUCTE=$((X*Y))

echo "${X}*${Y}=${PRODUCTE}"


if [[ ${Y} -eq 0 ]]
then
    echo "AIXO PETA!!"
else
    DIVISIO=$((X/Y))
    echo "${X}/${Y}=${DIVISIO}"
fi