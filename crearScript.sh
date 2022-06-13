#!/bin/bash

#COMPROBACION PARAMETROS

if [ $# -eq 0 ]; then
	echo "Debe ingresar el nombre del script como parametro"
	exit
fi

for arg in "$@"; do
	if [ "$arg" == "--help" ] || [ "$arg" == "-h" ]; then
		echo "***** HELP *****"
		exit
	fi
done

if [ -f "$1.sh" ]; then
	echo "El archivo '$1.sh' ya existe"
	exit
fi

NOM="$1.sh"
echo "#!/bin/bash" > $NOM
echo " " >> $NOM
chmod +x $NOM
echo "Script $NOM creado con exito"

