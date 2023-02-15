#!/bin/bash
#### f.- Haz un script que se llame f.sh, que pasándole por parámetro un nombre me diga si tiene todo aprobado o no. Comitea, integra en master y sube a GitHub

nombre=$1

aprobadas=0

conteoAsignaturas=0

while read linea; do
    nom=`echo $linea | cut -d " " -f1` #cortamos los campos con cut y menos d para limitador
    nota=`echo $linea | cut -d " " -f3`
    if [ "$nom" = "$nombre" ];then
        ((conteoAsignaturas++))
        if [ $nota -ge 5 ]; then
            ((aprobadas++))
        fi
    fi
done < notas.txt

if [ $aprobadas -eq $conteoAsignaturas ]; then
  echo "El alumno $nombre lo tiene todo aprobado."
else
  echo "El alumno $nombre no lo tiene todo aprobado."
fi

