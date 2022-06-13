#!/bin/bash

echo "Ingrese numero1: "
read NUM1
echo "Ingrese numero2: "
read NUM2

let RES=$NUM1+$NUM2
echo "Suma: $NUM1 + $NUM2 = $RES"
let RES=$NUM1-$NUM2
echo "Resta: $NUM1 - $NUM2 = $RES"
let RES=$NUM1*$NUM2
echo "Producto: $NUM1 * $NUM2 = $RES"
if [ $NUM2 -eq 0 ]; then
	echo "Division: $NUM1 / $NUM2 = ERROR"
else
	let RES=$NUM1/$NUM2 fi
	echo "Division: $NUM1 / $NUM2 = $RES"
fi
