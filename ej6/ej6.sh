#!/bin/bash

if [ $# != 2 ]; then echo "Se deben pasar dos parametros validos."; exit; fi
if [ ! -d $1 ]; then echo "'$1' no es un directorio."; exit; fi
if [ $2 -le 12 -a $2 -ge 1 ]; then echo ""; else exit; fi

for archivo in $(find $1 *); do
	MESMOD=$(stat "$archivo" | grep "Modify" | cut -d"-" -f2)
	if [ $MESMOD -eq $2 ]; then echo "Mes modificacion '$archivo': $MESMOD"; fi
done
