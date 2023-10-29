#! /bin/bash
echo "Introduce tu edad"
read age

if (($age >= 18))
then
 echo "Eres adulto"
elif (($age == 17 )) # Añadir otra condición dentro del bloque
then
 echo "Casi eres mayor"
else
 echo "Eres un niño"
fi
