#!/bin/bash
function usage(){
    echo "Usage ${0}"
    echo
    echo "has de ser root"
    exit 1

}
if [[ ${UID} -ne 0 ]]
then
    usage
fi

read -p "Introdueix el nom d'usuari: " USER_NAME

echo "creant l'usauri ${USER_NAME}"