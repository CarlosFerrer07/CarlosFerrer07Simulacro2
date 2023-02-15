#!/bin/bash
#### b.- Haz un script que se llame b.sh, que calcule cuántas matrículas hay. Comitea, integra en master y sube a GitHub

alumnos=`cat notas.txt | wc -l`

matriculas=$(($alumnos - 1))

echo "Hay $matriculas estudiantes"