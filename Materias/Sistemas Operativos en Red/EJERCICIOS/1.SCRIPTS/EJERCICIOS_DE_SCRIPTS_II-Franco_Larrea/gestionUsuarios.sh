#!/bin/bash

start:

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
	elif [ $opcion = "2" ]; then
		echo " "
		echo "Introduzca un nombre de usuario: "
		read nomuser
		sudo deluser $nomuser
		echo "Usuario $nomdeluser eliminado."
	elif [ $opcion = "3" ]; then
		echo " "
		echo "Introduzca un nombre de usuario: "
		read nomuser
		cat /etc/passwd | grep $nomuser
	else
		echo " "
		echo "Programa finalizado"
	fi
fi