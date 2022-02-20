#!/bin/bash

while [ 1 -eq 1 ]
do

	clear
	echo -n "\nMENÚ \n1. ping \n2. tracepath \n3. nslookup \n4. whois \n5. Salir \nElige una opción del menú: "
	read opcion

	case $opcion in
		1 )
			ping -c 6 $1
			echo "\nPulse cualquier tecla para continuar..."
			read pausa
			;;
		2 )
			tracepath $1
			echo "\nPulse cualquier tecla para continuar..."
			read pausa
			;;	
		3 )
			nslookup ndots=1 $1
			echo "\nPulse cualquier tecla para continuar..."
			read pausa
			;;
		4 )
			whois $1
			echo "\nPulse cualquier tecla para continuar..."
			read pausa
			;;
		5 )
			exit 0
			;;
		* )
			echo "\nError, has introducido una opción invalida\n" 1>&2
			echo "\nPulse cualquier tecla para continuar..."
			read pausa
			;;
	esac			
done