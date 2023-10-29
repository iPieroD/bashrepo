
Comandos Básicos Bash

1. Comentarios
	# Solo para una linea
	: '  '
2. Variables
	TESTVAR="Esta es una variable de prueba"
3. Comando echo
	Salida de texto estandar: echo "Hola, Mundo"
	echo -n : Salida sin una nueva linea
	echo -e para poder usar el salto de linea \: echo -e "Hola, \nmundo"
		Hola,
		mundo
	echo -t

4. Funciones
-Una funcion compila un conjunto de comandos en un grupo. Por ejemplo para volver a ejecutar un comando simplemente se puede escribir la función.
	function_name(){
	first command
	second command
	}

	function_name () { first comand; second comand;}

- Se puede utilizar la palabra reservada function para elimnar la necesidad de los parentesis.

	function function_name { first command; second command }

5.Bucles
- Son utiles para ejecutar comandos varias veces (for, whil y until)

-El bucle "for" ejecuta el comando para una lista de elementos:

	for item in [lista]
	do
	[comandos]
	done
#EJEMPLO for
for days in Lunes Martes Miércoles Jueves Viernes Sábado Domingo
do
echo “Day: $days”
done

days se convierte automaticamente en una variable, cuyos valores son los nombres de los dias. Luego en el comando echo se utiliza $ para llamar a los valores de la variable.

-El bucle "while" El sript evaluará una condición. Si la condición es verdadera, seguirá ejecutando los comandos hasta que ya no se cumpla la condicón.

	while [condición]
	do
	[comandos]
	done

-El bucle "until" es lo contrario a "while" Repetira el comandp hasta que la condición se convierta en verdadera.
	
	until [condición]
	do
	echo $1
	((i++))
	done

6. Declaración de condicionales (if, then, else)

-La sentencia if va seguida de una expresión condicional. Después, le sigue then y el comando para definir la salida de la condición. El script ejecutara el comando si la condicón expresada en la
sentencia if es verdadera. 

7. Lectura y escritura de archivo

