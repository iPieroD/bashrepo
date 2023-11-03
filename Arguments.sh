#! /bin/bash
: '
echo "Estos son los argumentos 1 y 3: " $1 $3
echo "Estos son todos los argumentos: "$@
echo "Este es el numero total de argumentos: "$#
' 

args=("$@")

echo "Resultado: " ${args[1]} - ${args[@]}
