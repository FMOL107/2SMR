#!/bin/bash

opcion=0
while [ $opcion -ne "4" ]
do
	clear
	echo -n "\nMENÚ \n1. Crear usuario \n2. Eliminar usuario \n3. Mostrar la información del usuario \n4. Salir \nElige una opción del menú: "
	read opcion

	case $opcion in
		1 )
			echo -n "\nIntroduzca un nombre de usuario: "
			read usuario
			sudo adduser $usuario
			echo "\nUsuario $nomuser creado."
			echo "\nPulse cualquier tecla para continuar..."
			read pausa
			;;
		2 )
			echo -n "\nIntroduzca un nombre de usuario: "
			read usuario
			sudo deluser $usuario
			echo "\nUsuario $nomuser eliminado."
			echo "\nPulse cualquier tecla para continuar..."
			read pausa
			;;
		3 ) 
			echo -n "\nIntroduzca un nombre de usuario: "
			read nomuser
			cat /etc/passwd | grep $nomuser
			echo "\nPulse cualquier tecla para continuar..."
			read pausa
			;;
		4 )
			echo "\nPrograma finalizado.\n"
			exit 0
			;;
		* )
			echo "\nError: No se ha introducido una opción valida.\n" 1>&2
			exit 1
			;;
	esac
done