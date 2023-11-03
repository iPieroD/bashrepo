#! /bin/bash

myvar=$1

while [ $myvar -le 10 ] #Mientras "myvar" sea menor de 10
do #Haz lo siguiente
	echo $myvar
	myvar=$(( $myvar +1 )) #Creamos otra version de "myvar" y le sumamos uno
	sleep 0.5
done
 
