#!/bin/bash

#### a.- Haz un script que se llame tarifa.sh, que calcule qué tarifa me conviene y cuánto me va a costar atendiendo a:
##### - Tarifa 1: Importe fijo de 100€ que incluyen llamadas ilimitadas
##### - Tarifa 2: Importe fijo de 50€ y 1€ por cada llamada
##### - Tarifa 3: Importe fijo de 20€ y 2€ por cada llamada

echo "Introduce el numero de llamadas"
read llamadas

if [ $llamadas -gt 20 ];then
    echo "La tarifa 1 es la que más te conviene, pagarás 100 euros con llamadas ilimitadas"
elif [ $llamadas -le 20 ] && [ $llamadas -gt 10 ];then
    tarifa=50
    importe=$(($tarifa + $llamadas))
    echo "La tarifa 2 es la que más te conviene, pagarás $importe euros"
else 
    tarifa=20
    importe=$(($tarifa + ($llamadas * 2) ))
    echo "La tarifa 3 es la que más te conviene, pagarás $importe euros"
fi
