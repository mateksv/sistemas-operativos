#!/bin/bash

if [ $# = 0 ]; then
	echo "Faltan parametros"
	exit
fi

for archivo in $(find $1 -name "*.sh"); do
	chmod  o-x,g-w $archivo
done

