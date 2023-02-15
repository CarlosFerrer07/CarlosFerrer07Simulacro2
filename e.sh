#!/bin/bash

#### e.- Haz un script que se llame e.sh, que pasándole por parámetro un nombre y un módulo me devuelve la calificación. Es obligatorio reutilizar el script anterior. Comitea, integra en master y sube a GitHub

nombre=$1
modulo=$2

if [ $# -ne 2 ]
then
    echo "No has introducido los parámetros que tocan"
    exit
fi

nota=`cat notas.txt | grep $nombre | grep $modulo | awk {'print $3'}`
echo $nota
if [ $nota -ge 9 ]
then
    echo "Has sacado sobresaliente"
elif [ $nota -lt 9 ] && [ $nota -ge 5 ]
then
    echo "Has aprobado"
else 
    echo "Has suspendido"
fi