#include <stdio.h>
#include <stdlib.h>

void imprimirTablero(int tablero[]);
// Verify if there is a winner: 
// -1: Sigue Jugando
//  0: Empate
//  1: Gana Jugador 1
//  2: Gana Jugador 2
int verificarGandor(int tablero[]);

void imprimirTablero(int t[])
{
	char cod[3] = {'-', 'X', 'O'};
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


int main ()
{
    	int jugador=-1,empate=-1,gana=-1;
    	int tablero[9] = {0, 0, 0, 0, 0, 0, 0, 0, 0};
	imprimirTablero(tablero);	
    	return 0;
}
