#include <stdio.h>
#include <stdlib.h>

void imprimirTablero(char code[], int tablero[]);
int jugar(int tablero[], int posicion, int jugador); 
// Verify if there is a winner: 
// -1: Sigue Jugando
//  0: Empate
//  1: Gana Jugador 1
//  2: Gana Jugador 2
int verificarGanador(int tablero[], int turno);
int verificarGanador(int t[], int turno)
{
	if (t[0] == t[1] && t[0] == t[2] && t[0] != 0){
		return t[0];
	} else if (t[3] == t[4] && t[3] == t[5] && t[3] != 0){
		return t[3];
	} else if (t[6] == t[7] && t[6] == t[8] && t[6] != 0){
		return t[6];
	} else if (t[0] == t[3] && t[0] == t[6] && t[0] != 0){
		return t[0];
	} else if (t[1] == t[4] && t[1] == t[7] && t[1] != 0){
		return t[1];
	} else if (t[2] == t[5] && t[2] == t[8] && t[2] != 0){
		return t[2];
	} else if (t[0] == t[4] && t[0] == t[8] && t[0] != 0){
		return t[0];
	} else if (t[2] == t[4] && t[2] == t[6] && t[2] != 0){
		return t[2];
	} else {
		if (turno >= 9){
			return 0;
		}
		return -1;
	}
}

void imprimirTablero(char cod[], int t[])
{
	printf("\n");
	printf("     |     |     \n");
	printf("  %c  |  %c  |  %c  \n", cod[t[0]], cod[t[1]], cod[t[2]]);
	printf("_____|_____|_____\n");
	printf("     |     |     \n");
	printf("  %c  |  %c  |  %c  \n", cod[t[3]], cod[t[4]], cod[t[5]]);
	printf("_____|_____|_____\n");
	printf("     |     |     \n");
	printf("  %c  |  %c  |  %c  \n", cod[t[6]], cod[t[7]], cod[t[8]]); 
	printf("\n");
}

int jugar(int t[], int pos, int jugador){
	if (pos > 9 || pos < 1){
		printf("Posicion no valida, vuelva a ingresar: ");
		return -1;
	} else {
		if (t[pos-1] != 0){
			printf("Posicion ya tomada, vuelva a ingresar: ");
			return -1;
		} 
		t[pos-1] = jugador;
		return 0;
	}
}

int main ()
{
	char cod[3] = {'-', 'X', 'O'};
    	int jugador = 1, turno = 0, resultado = -1;
    	int tablero[9] = {0, 0, 0, 0, 0, 0, 0, 0, 0};
	printf("Bienvenido a TIC-TAC-TOE\n");
	while (verificarGanador(tablero, turno) == -1)
	{
		int jugada;
		printf("Jugador %d es tu turno: \n", jugador);
		imprimirTablero(cod, tablero);
		printf("Ingresa la posicion en el tablero, del 1 al 9: ");
		scanf("%d", &jugada);
		while (jugar(tablero, jugada, jugador) == -1){
			scanf("%d", &jugada);
		}
		turno += 1;
		if (jugador == 1){
			jugador = 2;
		} else {
			jugador = 1;	
		}
	}

	resultado = verificarGanador(tablero, turno);
	if (resultado == 0){
		printf("\nEMPATE!!!\n");
	} else {
		printf("\nGANADOR ES: %d (%c)\n", resultado, cod[resultado]);
	}
	imprimirTablero(cod, tablero);
	return 0;
}
