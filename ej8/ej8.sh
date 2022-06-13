#!/bin/bash

if [ $# = 0 ]; then echo "Faltan parametros."; exit; fi
if [ ! -d $1 ]; then echo "'$1' no es un directorio."; exit; fi

DIR=0
ARCH=0

for i in $(find $1 -type d); do
	let DIR=DIR+1
done
for i in $(find $1 -type f); do
	let ARCH=ARCH+1
done

rm output.ej8 2>/dev/null
echo "UBICACION= $1" >> output.ej8
echo "DIRECTORIOS= $DIR" >> output.ej8
echo "ARCHIVOS= $ARCH" >> output.ej8
