#!/bin/bash

echo -n "\nIntroduzca un numero: "
read numero
i=2

while [ $numero -ge $i ]
do
	echo "$i"
	i=`expr $i + 2`
done
