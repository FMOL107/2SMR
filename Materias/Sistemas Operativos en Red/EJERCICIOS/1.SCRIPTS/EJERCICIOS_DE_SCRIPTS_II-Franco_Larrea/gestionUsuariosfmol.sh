#!/bin/bash

#Esta es mi versión del ejercicio planteado.

opcion=0
while [ $opcion -ne "4" ]
do
	clear
	echo " "
	echo "MENÚ"
	echo "1. Crear usuario"
	echo "2. Eliminar usuario"
	echo "3. Mostrar la información del usuario"
	echo "4. Salir"
	echo "Elige una opción del menú: "
	echo " "
	read opcion

	if [ -z $opcion ] || [ $opcion != "1" ] && [ $opcion != "2" ] && [ $opcion != "3" ] && [ $opcion != "4" ]; then
		echo " "
		echo "Error: No se ha introducido una opción valida."
		exit 1
	else
		if [ $opcion = "1" ]; then
			echo " "
			echo "Introduzca un nombre de usuario: "
			read nomuser
			sudo adduser $nomuser
			echo "Usuario $nomuser creado."
			read pausa
		elif [ $opcion = "2" ]; then
			echo " "
			echo "Introduzca un nombre de usuario: "
			read nomuser
			sudo deluser $nomuser
			echo " "
			echo "Usuario $nomdeluser eliminado."
			read pausa
		elif [ $opcion = "3" ]; then
			echo " "
			echo "Introduzca un nombre de usuario: "
			read nomuser
			cat /etc/passwd | grep $nomuser
			read pausa
		else
			echo " "
			echo "Programa finalizado"
			echo " "
		fi
	fi
done