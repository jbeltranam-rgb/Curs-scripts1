#!/bin/bash

if [[ ${UID} -ne 0 ]]
then
    echo "Usage ${0}"
    echo
    echo "has de ser root"
    exit 1

fi

read -p "Introdueix el nom d'usuari: " USER_NAME

echo "creant l'usauri ${USER_NAME}"