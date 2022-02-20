#!/bin/bash

echo -n "La UID del usuario es " 
cat /etc/passwd | grep $1 | cut -d ":" -f3 
echo -n "El GID del grupo primario es " 
cat /etc/passwd | grep $1 | cut -d ":" -f4 