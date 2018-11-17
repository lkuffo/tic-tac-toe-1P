.data  # delcaraciones de variables

# TEXTOS: 
bienvenidoTexto: .asciiz "Bienvenido a TIC-TAC-TOE!\n"
movimientoInvalidoTexto: .asciiz "Posicion no valida, vuelva a ingresar\n"
espacioYaOcupado: .asciiz "Posicion ya tomada, vuelva a ingresar: "
victoriaTexto: .asciiz "\nGANADOR ES:  "
empateTexto: .asciiz  "\nEMPATE!!!"
inputMovimiento: .asciiz "Jugador   es tu turno. Ingresa la posicion en el tablero, del 1 al 9: "
finalTexto: .asciiz "\nGracias por Jugar"

# FORMATO DE TABLERO
tablero: .asciiz "\n    |   |   \n ---|---|---\n    |   |   \n ---|---|---\n    |   |   \n"

# SIMBOLOS PARA CADA JUGADOR
simboloX: .asciiz "X"
simboloO: .asciiz "O"


.text   #empiezan las instrucciones

#TEXTO DE BIENVENIDA
li $v0, 4  # Vamos a imprimir strings
la $a0, bienvenidoTexto  # Cargamos el string a imprimir (texto de bienvenida)
syscall # mostramos por pantalla

#INICIALIZACION DE REGISTROS

la $s1, tablero # string del tablero
la $s2, inputMovimiento # string para pedir movimiento
la $s3, victoriaTexto # string de victoria
			
li $s0, 0  # Jugador que le toca ( 0 o 1 )
li $s5, 0  # Numero de turnos 
			
# Los registros tipo t van a tener el tablero logico, uno por casilla
li $t1, 0
li $t2, 0
li $t3, 0
li $t4, 0
li $t5, 0
li $t6, 0
li $t7, 0
li $t8, 0
li $t9, 0			

loopJuego:
			li $v0, 4 	# vamos a imprimir caracteres
			la $a0, tablero   # imprimimos el tablero
			syscall

			beq $s5, 9, empate  # Si llega a 9 turnos, saltamos a empate

			add $s5, $s5, 1 # Anadir un turno al juego

			rem $t0, $s0, 2 # Para cambiar jugador: sacamos el modulo 2 del jugador actual 
			add $s0, $s0, 1 # Y luego a ese valor le sumamos 1
			bnez $t0, Jugador0 # Si el jugador no es 0 (player X), entonces jugamos con 1 (player 0), es decir
					  # saltamos a Jugador0 sin pasar por JugadorX

JugadorX:
			lb $a1, simboloX  # Cargamos la cadena x en a1
			sb $a1, 8($s2)  # Ponemos la X en la cadena para pedir movimiento
			sb $a1, 12($s3)  # Ponemos la X en la cadena de victoria 
			j turno # Saltamos a turno sin pasar por jugador 0
			
Jugador0:
			lb $a1, simboloO # Cargamos la cadena o en a1
			sb $a1, 8($s2) # Ponemos la O en la cadena para pedir movimiento
			sb $a1, 12($s3) # Ponemos la O en la cadena de victoria 

turno:
			li $v0, 4  # Vamos a imprimir un string
			la $a0, inputMovimiento  # Imprimimos la cadena para pedir movimiento
			syscall

			# Le pedimos el movimiento al usuario
			li $v0, 5 # Vamos a pedir un entero (read_int)
			syscall
			move $s6, $v0  # Movemos lo que ingreso el usuario a $s6

			# Saltamos a el caso, dependiendo de que ingreso el usuario
			beq $s6, 1, casilla1
			beq $s6, 2, casilla2
			beq $s6, 3, casilla3
			beq $s6, 4, casilla4
			beq $s6, 5, casilla5
			beq $s6, 6, casilla6
			beq $s6, 7, casilla7
			beq $s6, 8, casilla8
			beq $s6, 9, casilla9
			
			# Si no entro a ninguna rama: 
			li $v0, 4	# Vamos a imprimir string
			la $a0, movimientoInvalidoTexto # Le decimos que ha ingresado un movimiento invalido
			syscall
			j turno # Volvemos a repetir el loop del juego 

# Por cada casilla en la que puede ingresar el jugador, se hace un caso, en donde
# se va a verificar si la casilla esta ocupado, y luego se verifica cual jugador fue el que hizo la jugada.
# Finalmente, se carga la jugada en el tablero logico, se coloca el simbolo correspondiente en el string para el tablero
# y verificamosGanador

casilla1:
			bnez $t1, ocupado # Si esa posicion del tablero no es cero, ya esta ocupada. Saltamos a ocupado
			bnez $t0, O1 # Si el jugador es player 0 (player X), saltamos a O1, sin pasar por X1

			X1:
			li $t1, 1 # Caragamos t1 con un id de jugador en el tablero logico 
			sb $a1, 3($s1)  # Colocar simbolo en posicion 3 de string para imprimir el tablero 
			j verificarGanador  # Saltamos a verificarGanador

			O1:
			li $t1, 2 # Caragamos t1 con un id de jugador en el tablero logico 
			sb $a1, 3($s1)  # Colocar simbolo en posicion 3 de string para imprimir el tablero 
			j verificarGanador # Saltamos a verificarGanador

casilla2:
			bnez $t2, ocupado
			bnez $t0, O2

			X2:
			li $t2, 1
			sb $a1, 7($s1)  # Colocar simbolo en posicion 7 de string para imprimir el tablero 
			j verificarGanador

			O2:
			li $t2, 2
			sb $a1, 7($s1)  # Colocar simbolo en posicion 7 de string para imprimir el tablero 
			j verificarGanador

casilla3:
			bnez $t3, ocupado
			bnez $t0, O3

			X3:
			li $t3, 1
			sb $a1, 11($s1)  # Colocar simbolo en posicion 11 de string para imprimir el tablero 
			j verificarGanador

			O3:
			li $t3, 2
			sb $a1, 11($s1)  # Colocar simbolo en posicion 11 de string para imprimir el tablero 
			j verificarGanador

casilla4:
			bnez $t4, ocupado
			bnez $t0, O4

			X4:
			li $t4, 1
			sb $a1, 29($s1)  # Colocar simbolo en posicion 29 de string para imprimir el tablero 
			j verificarGanador

			O4:
			li $t4, 2
			sb $a1, 29($s1)  # Colocar simbolo en posicion 29 de string para imprimir el tablero 
			j verificarGanador

casilla5:
			bnez $t5, ocupado
			bnez $t0, O5

			X5:
			li $t5, 1
			sb $a1, 33($s1) # Colocar simbolo en posicion 33 de string para imprimir el tablero 
			j verificarGanador

			O5:
			li $t5, 2
			sb $a1, 33($s1) # Colocar simbolo en posicion 33 de string para imprimir el tablero 
			j verificarGanador

casilla6:
			bnez $t6, ocupado
			bnez $t0, O6

			X6:
			li $t6, 1
			sb $a1, 37($s1) # Colocar simbolo en posicion 37 de string para imprimir el tablero 
			j verificarGanador

			O6:
			li $t6, 2
			sb $a1, 37($s1) # Colocar simbolo en posicion 37 de string para imprimir el tablero 
			j verificarGanador

casilla7:
			bnez $t7, ocupado
			bnez $t0, O7

			X7:
			li $t7, 1
			sb $a1, 55($s1) # Colocar simbolo en posicion 55 de string para imprimir el tablero 
			j verificarGanador

			O7:
			li $t7, 2
			sb $a1, 55($s1) # Colocar simbolo en posicion 55 de string para imprimir el tablero 
			j verificarGanador

casilla8:
			bnez $t8, ocupado
			bnez $t0, O8

			X8:
			li $t8, 1
			sb $a1, 59($s1) # Colocar simbolo en posicion 59 de string para imprimir el tablero 
			j verificarGanador

			O8:
			li $t8, 2
			sb $a1, 59($s1) # Colocar simbolo en posicion 59 de string para imprimir el tablero 
			j verificarGanador

casilla9:
			bnez $t9, ocupado
			bnez $t0, O9

			X9:
			li $t9, 1
			sb $a1, 63($s1) # Colocar simbolo en posicion 63 de string para imprimir el tablero 
			j verificarGanador

			O9:
			li $t9, 2
			sb $a1, 63($s1) # Colocar simbolo en posicion 63 de string para imprimir el tablero 
			j verificarGanador

ocupado:
			li $v0, 4  # Vamos a imprimir strings
			la $a0, espacioYaOcupado  # Cargamos el string a imprimir y lo mostramos
			syscall
			j turno # Se vuelve a repetir el turno del jugador

# Para verificar si existe (parecido a como se hizo en C), se hace una condicion doble con cada caso en la cual
# un jugador puede ganar el tic tac toe. Se hace una operacion bit wise and, porque dado que en el tablero logico
# solo estan guardados 10 (2 | player O), 01 (1 | player X) y 00 (0 | Vacio), al haber un vacio, o un O y X en la misma
# combinacion de casillas, el bit-wise and da 0. Por lo tanto, no se va a saltar a mostrarGanador (bnez)
verificarGanador:
			# Fila Superior
			and $s7, $t1, $t2 
			and $s7, $s7, $t3
			bnez $s7, mostrarGanador

			# File Media
			and $s7, $t4, $t5
			and $s7, $s7, $t6
			bnez $s7, mostrarGanador

			# Fila Inferior
			and $s7, $t7, $t8
			and $s7, $s7, $t9
			bnez $s7, mostrarGanador

			# Columna Primera
			and $s7, $t1, $t4
			and $s7, $s7, $t7
			bnez $s7, mostrarGanador

			# Columna Media
			and $s7, $t2, $t5
			and $s7, $s7, $t8
			bnez $s7, mostrarGanador

			# Columna Final
			and $s7, $t3, $t6
			and $s7, $s7, $t9
			bnez $s7, mostrarGanador

			# Diagonal Principal
			and $s7, $t1, $t5
			and $s7, $s7, $t9
			bnez $s7, mostrarGanador

			# Diagonal Secundaria
			and $s7, $t7, $t5
			and $s7, $s7, $t3
			bnez $s7, mostrarGanador
			
			j loopJuego  # Si no hay ganador (nunca hubo branching), volvemos a repetir el juego

mostrarGanador:
			li $v0, 4 # Vamos a imprimir strings
			la $a0, tablero  # Cargamos el string a imprimir y lo mostramos
			syscall

			li $v0, 4 # Vamos a imprimir strings
			la $a0, victoriaTexto  # Cargamos el string a imprimir y lo mostramos
			syscall
			
			j finalJuego # Si hay un ganador, saltamos al final del juego

empate:
			li $v0, 4  # Vamos a imprimir strings
			la $a0, empateTexto  # Cargamos el string a imprimir y lo mostramos
			syscall
			
			j finalJuego  # Si hay empate, saltamos al final del juego

finalJuego:
			li $v0, 4  # Vamos a imprimir strings
			la $a0, finalTexto # Cargamos el string a imprimir y lo mostramos
			syscall
