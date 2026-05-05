#!/bin/bash
# endevina -- endevina un nombre entre 1 i 100 en 5 intents
NUMERO=$((RANDOM % 100 + 1))
INTENTS=5
while [ ??? ]; do
read -p "Entra un nombre (1-100): " RESPOSTA
# Comparar RESPOSTA amb NUMERO i donar la pista (mes gran / mes pet
if [ $NUMERO -eq $RESPOSTA ] 
then
    echo "as guanyat"
    
elif [ $RESPOSTA -gt $NUMERO ]
    echo "el numero per adivinar es menor"
    
fi

# Actualitzar el comptador d'intents
done
# Missatge final: ha encertat o ha esgotat els intents?