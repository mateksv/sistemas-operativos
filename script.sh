#!/bin/bash

#COMPROBACION PARAMETROS

if [ $# -eq 0 ]; then
	echo "Debe ingresar al menos un parametro."
	echo "./script -h, --help para desplegar el panel de ayuda."
	exit
fi


for arg in "$@"; do
	if [ "$arg" == "--help" ] || [ "$arg" == "-h" ]; then
		echo "************* HELP *************"
		echo "Modo de uso: ./script <argumento1> <argumento2>"
		echo "		./script <nombreScript> <directorio>"
		echo "		!!! <nombreScript> : no incluir extencion '.sh' en el nombre del script."
		echo "		!!! <directorio> : en caso de dejar vacio este argumento, se tomara por defecto el directorio actual."


	exit
	fi
done

if [ $# -eq 2 ]; then
	if [ -d $2 ]; then
		cd $2
	else
		echo "El directorio '$2' no existe."
		exit
	fi
fi

if [ -f "$1.sh" ]; then
	echo "El archivo '$1.sh' ya existe"
	exit
fi

NOM="$1.sh"
echo "#!/bin/bash" > $NOM
echo "" >> $NOM
echo "if [ \$# = 0 ]; then echo \"Faltan parametros.\"; exit; fi" >> $NOM

chmod +x $NOM
echo "Script $NOM creado con exito"




