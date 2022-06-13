#!/bin/bash

if [ $# = 0 ]
then
	echo "Debe ingresar el nombre del script como parametro"
else
	if [ -f "$1.sh" ]
	then
		echo "El archivo '$1.sh' ya existe."

	elif [ "$1.sh" -eq "$0" ]; then
		echo "El archivo '$1.sh' no puede tener es nombre."
	else

		NOM="$1.sh"
		echo "#!/bin/bash" > $NOM
		echo " " >> $NOM
		chmod +x $NOM
		echo "Script $NOM creado con exito" 
	fi
fi
