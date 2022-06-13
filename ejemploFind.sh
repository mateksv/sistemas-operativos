#!/bin/bash

# ENUNCIADO
# Buscar todos los 'archivos' que tengan 'permisos 755' en '/documentos' y
# 'modificar los permisos a 777'
# Usar find, no stat

for archivo in $(find ~/Documents/ -perm 755 -type f); do
	chmod 777 $archivo
	echo "Archivo '$archivo' ahora con permisos 777"
done

# NO FUNCIONA CON ARCHIVOS QUE CONTENGAN ESPACIOS EN EL NOMBRE

# chmod 777 $(find ~/Documents/ -perm 755 -type f)
# find dir -type f perm 755 -exec chmod 777 {}\;
