#! /bin/bash
echo "Your age"
read age

if (($age >= 18))
then
 echo "Big boy"
elif (($age == 17 )) # Añadir otra condición dentro del bloque
then
 echo "Close but not big boy"
else
 echo "Littel boy"
fi
