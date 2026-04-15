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

useradd -m -c "${COMMENTS}" ${USER_NAME} &> /dev/null

if [[ ${?} -ne 0 ]]
then
    echo "Errada creat l'usuari"
    exit 1

fi

echo "${USER_NAME}:${PASSWORD}" | chpasswd
#comprovam si el canvi de password ha anat bé.
if [[ ${?} -ne 0 ]]
then
    echo "Errada Canviant password"
    exit 1

fi 

#fer el caducar el password
passwd -e ${USER_NAME}

exit 0