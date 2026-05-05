#!/bin/bash

MAX=$1
shift

while [ $# -gt 0 ]
do
    if [ $1 -gt $MAX ]; then
    MAX=$1
    fi
    shift
done

echo "El maxim es: $MAX"