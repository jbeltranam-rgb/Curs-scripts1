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

read -p "Introdueix el nom complet: " COMMENTS
#demanam el nom de l'usuari
read -p "Introdueix el nom d'usuari: " USER_NAME
#demanam el password
read -p "Introdueix el password: " PASSWORD

echo "creant l'usauri ${USER_NAME}"

useradd -m -c "${COMMENTS}" ${USER_NAME}