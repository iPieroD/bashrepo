1. Comentarios
	1. # 
	2. : ' '
2. Cat.
	1. Sirve para mostrar un texto por pantalla
		1. #! /bin/bash
		2.  cat << myText
		3. esto es un texto que se mostrara por la termintal
		4. myText
	3. Sirve para redirigir todo el texto que se pone en terminal a un archivo
		1. #! /bin/bash
		2. cat >> TextTerminal.txt
		3. Aqui escribiremos lo que quramos por terminal y se gurada en el archivo de texto.
3. Read.
	1. Sirve para guardar lo que se escriba por terminal en una variable.
		1. #! /bin/bash
		2. echo "Introduce tu edad: "
		3. read age
		4. echo "Esta es tu edad: $age"
4. Condicionales
	1. Saber si una edad es igual a la que se la ha asignado a una variable, se usan Parametros o eperadores. -eq -ge, -le, -gt, -lt
		1. #! /bin/bash
		2. age=20
		3. if [$age -eq 10] # Si algo ....
		4. then  # Si se cumple lo antreiro entonces haz lo siguiente
			1. echo "El numero es igual"
		5. else # Si no se cumple lo anterior entonces...
			1. echo "El numero no es igual"
		6. fi # Cerrar el concional
	2. Usar condicionales entre (( )), para poder usar parametros mas parecidos a lenuajes de programación.
		1. #! /bin/bash
		2. age=20
		3. if ((age == 10)) # Si algo ....
		4. then  # Si se cumple lo antreiro entonces haz lo siguiente
			1. echo "El numero es igual"
		5. else # Si no se cumple lo anterior entonces...
			1. echo "El numero no es igual"
		6. fi # Cerrar el concional
	3. Tener mas de dos operaciones: Ejercicio si  edad < 18 muestra "Eres niño". Si la edad es >= 18 muestra "eres mayor". Si edad == 17 muestra "Casi eres mayor".
		1. #! /bin/bash
		2. echo "Introduce tu edad"
		3. read age
		5. if (($age >= 18))
		6. then
			1. echo "Eres adulto"
		7. elif (($age == 17 )) # Añadir otra condición dentro del bloque
		8. then
			1. echo "Casi eres mayor"
		9. else
			1. echo "Eres un niño"
		10. fi
5. Operadores Logicos
	1. && Operador AND: "una cosa AND otra" Se tienen que cumplir ambas para que sea TRUE
		1. #! /bin/bash
		2. age=10
		3. if [ $age -gt 18 ] && [ $age -lt 40 ]
		4. then
			1. echo "Edad Valida"
		5. else
			1. echo "Edad Invalida"
		6. fi 
	2. Para unirlo en un condción [ [ La función] ]
		1.  #! /bin/bash
		2. age=10
		3. if [ [$age -gt 18  &&  $age -lt 40] ] 
		4. then
			1. echo "Edad Valida"
		5. else
			1. echo "Edad Invalida"
		6. fi 
	3. "||"  "-o"  Operador OR: "Una cosa OR otra " Con tal de que se cumpla una de las dos es TRUE
		1. #! /bin/bash
		2. age=10
		3. if [ [$age -gt 18  ||  $age -lt 40] ] 
		4. then
			1. echo "Edad Valida"
		5. else
			1. echo "Edad Invalida"
		6. fi 
6. Case 
	1. Es simplificar los condcionales solo funciona con valores no aritmeticos no se puede comparar dos numeros solo textos
		1. #! /bin/bash
		2. echo "Escoge entre el 1 y el 2"
		3. read valor
		4. # EJEMPLO 
		5. case $valor in
			1. 1)
				1. echo "Escogiste 1"
			2. ;; # Break
			3. 2)
				1. echo "escogiste 2"
			4. ;; # Break
			5. * ) 
				1. echo "Valor Incorrecto"
			6. ;; # Break
		6. esac # Salir del case 
7. Loop 
	1. Recorrer elementos
	2. While "Mientras que... sea TRUE"
		1. Mostrar por pantalla del 0 al 10
		2. #! /bin/bash
		3. while [$number -le 10] # Solo se cumple si la condición es TRUE "Mientras el numero sea menor o igual a 10"
		4. do 
			1. echo $number
			2. number=$((number + 1)) # Esto sirve para sumar 1 la variable numbre
		5. done
	3. Until "Mientras sea FALSE" 
		1. Mostrar por pantalla del 0 al 10
		2. #! /bin/bash
		3. until [$number -ge 10] # Se cumple mintras la condición sea FALSE, "Hasta que el numero no sea mayor o igual a 10"
		4. do 
			1. echo $number
			2. number=$((number + 1)) # Esto sirve para sumar 1 la variable numbre
		5. done
	4. FOR  
		1. for "valor" in "lista de elementos"
			1. Mostrar del 1 al 4 
			2. #! /bin/bash
			3. for i in 1 2 3 4
			4. do
				1. echo $i
			5. done 
		2. Usar un rango  "Del 0 al 100" {0..100}
			1. Mostrar del 1 al 100
			2. #! /bin/bash
			3. for i in {0..100}
			4. do 
				1. echo $i
			5.  done
		3. Usar un rango  "Del 0 al 100 inrementado de 10 en 10" {0..100..10}
			1. Mostrar del 1 al 100 de 10 en 10
			2. #! /bin/bash
			3. for i in {0..100..10}
			4. do 
				1. echo $i
			5.  done 
		4. Usar el FOR de manera mas imperativa
			1. Mostrar del 1 al 100 de 10 en 10
			2. #! /bin/bash
			3. for (( i=0; i <=100; i+=10 ))
			4. do
				1. echo $i
			5. done 
8. Break y continue
	1. Break 
	2. Sirve para romper el bucle
		1. Recorre del al 1 al 10 de 1 en uno y cuando llegue a 5 para.
			1. #! /bin/bash
			2. for i in {0..10..1}
			3. do
				1. if [ $i -gt 5]
				2. then
					1. break
				3. fi 
				4. echo $i
			4. done 
	3. Continue 
	4. Sirve para continuar pasando de algo
		1. Recorre del 1 al 10 de 1 en 1 y saltandote el 3 y el 6.
			1. #! /bin/bash
			2. for i in {0..10..1}
			3. do
				1. if [ $i -eq 3] || [ $i -eq 6 ]
				2. then
					1. continue
				3. fi  
				4. echo $i
			4. done 
9. Arguments
	1. Valores que sirven para ejecutar detrminada lógica
		1. Mostra el 1 y 3, todos de manera ordenada, y la suma de estos
			1. ./arguments.sh 10 20 a b c "Cada argumento va separado por espacios"
			2. #! /bin/bash
			3. echo "Estos son los argumentos 1 y 3: "$2 $3
			4. echo "Estos son todos los argumentos: "$@
			5. echo "Este es el numero total de argumentos: "$#
		2. Guardar los argumentos en una lista para luego procesarlos.
			1. #! /bin/bash
			2. args=("$@") # Guardamos los argumentos en la variable
			3. echo "Resultado: " ${args[1]} - ${args[3]} - ${args[@]}
10. stdin (Standart input, output para leer strings)
	1. 
11. sterr (Standart Output) El resultado de una comando
	1. Guardar el Output en un archivo
		1. #! /bin/bash
		2. ls 1>file.txt
12. stdout (Standart Error) El error de un comando
	1. Guarda el Output de error
		1. #! /bin/bash
		2. ls -123>error.txt
	2. Guardar cualquier Output en un archivo
		1. #! /bin/bash
		2. ls -a >$ output.txt
13. pipes
	1. Sirve para encadenar comandos
	2. Creamos dos archivos
		1. first.sh
		2. #! /bin/bash
		3. MESSAGE="Hola mundo"
		4. export Message # Exportamos la variable
		5. ./second.sh # Para que luego ejecute el proximo archivo

		6. second.sh
		7. #! /bin/bash
		8. echo "Contenido del script 1: $MESSAGE"
	3. Concatenar dos strings
		1. #! /bin/bash
		2. echo "Enter a name"
		3. read NAME
		4. echo "Write an adjective"
		5. read ADJECTIVE
		6. RESULT="$NAME is $ADJECTIVE"
		7. echo $RESULT
	4. El resultado mostrará el echo del segundo script  
14. strings
	1. Comparar strings
		1. #! /bin/bash
		2. echo "Enter your password"
		3. read INPUT1
		4. echo "Confirm your password"
		5. read INPUT2
		6. if [ $INPUT1 == $INPUT2 ]
		7. then
			1. echo "Password accepted"
		8. else
			1. echo "Wrong password"
		9. fi 
	2.  Converitir a mayuculas o minusculas 
		1. #! /bin/bash
		2. echo "Enter a name"
		3. read NAME
		4. echo "Write a adjective"
		5. read ADJECTIVE
		6. echo ${NAME,,} # Converitra TODO a minusculas
		7. echo ${NAME^^} # Convertira TODO a mayusculas
		8. echo ${NAME,,[AEIOU]} # Solo convertira a minusculas "AEIOU"
		9. echo ${NAME,^^[aeiou]} # Solo convertira a mayusculas "aeiou"
15. numbers
	1. Operar con numeros
	``` bash
		1. #! /bin/bash
		2. X=10
		3. Y=20
		4. echo $(( x + y )) # Suma
		5. echo $(( x - y )) # Resta
		6. echo $(( x * y )) # Multiplicación
		7. echo $(( x / y )) # Devisión
		8. echo $(( x % y )) # Residuo
	```
1. declare
1. arrays 
2. functions
3. directories
4. curl
5. debugging Bash Scripts