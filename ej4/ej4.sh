#!/bin/bash

if [ $# = 0 ]; then echo "Faltan parametros."; exit; fi
if [ ! -d $1 ]; then echo "'$1' no es un directorio."; exit; fi

rm name extend perm tam 2>/dev/null

for i in $(find $1 -name "a*"); do
	echo "$i" >> name
done

for i in $(find $1 -name "*.txt"); do
	echo "$i" >> extend
done

for i in $(find $1 -perm 644); do
	echo "$i" >> perm
done

for i in $(find $1 -size +1k); do
	echo "$i" >> tam
done

