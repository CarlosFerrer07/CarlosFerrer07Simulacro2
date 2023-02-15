#!/bin/bash

#### c.- Haz un script que se llame c.sh, que calcule el número de suspensos y aprobados que hay en notas.txt.

aprobados=0
suspensos=0

while read linea; do

    nota=`echo $linea | awk {'print $3'}`
    if [ $nota != 'NOTA' ] && [ $nota -ge 5 ];then
        ((aprobados++))
    elif [ $nota != 'NOTA' ] && [ $nota -lt 5 ];then
        ((suspensos++))
    fi

done < notas.txt

echo "Hay $aprobados aprobados y $suspensos suspensos"