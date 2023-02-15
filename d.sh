#!/bin/bash

#### d.- Haz un script que se llame d.sh, que calcule la califiación (Suspendido, Aprobado o Sobresaliente) de una nota numérica que le paso por parámetro. Comitea, integra en master y sube a GitHub

nota=$1

if [ $# -ne 1 ] || [ $1 -lt 0 ] || [ $1 -gt 10 ];then
    echo "No has introducido tu nota por parametro o la nota introducida no es correcta"
    exit
fi

if [ $nota -ge 9 ]
then
    echo "Has sacado sobresaliente"
elif [ $nota -lt 9 ] && [ $nota -ge 5 ]
then
    echo "Has aprobado"
else 
    echo "Has suspendido"
fi