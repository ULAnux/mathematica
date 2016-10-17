/*Torres de Hanoi en Prolog:

	El problema de las torres de hanoi es juego matemático inventado en 1883 por el matemático francés Éduard Lucas. 

	Este problema consiste en 3 varillas verticales y n discos de radio creciente que se apilan insertándose en una de las tres varillas. 
	El objetivo del juego consiste en pasar todos los discos a la última varilla colocados de mayor a menor ascendentemente, siguiendo ciertas reglas:
	1. No hay dos discos iguales, están colocados de mayor a menor en la primera varilla ascendentemente, 
  2. No se puede colocar ningún disco mayor sobre uno menor a él en ningún momento. 
*/


hanoi(N):-resolver(N,'Varilla 1', 'Varilla 2', 'Varilla 3').

resolver(0,_,_,_).

resolver(N,Origen,Auxiliar,Destino):- 
	N>0,
	N1 is N-1,
	resolver(N1,Origen,Destino,Auxiliar),
	pasos(Origen,Destino),
	resolver(N1,Auxiliar,Origen,Destino).

pasos(Origen,Destino):-
	write(' desde '),
	write(Origen),
	write(' hasta '),
	write(Destino),
	write('\n'). 



/*
	N es el número de discos (a partir de 3 aumenta la complejidad)
	Origen indica la varilla inicial 
	Auxiliar es la varilla intermedia  
	Destino es la 3º varilla 
*/

%Ejemplos de Prueba:
	hanoi(3).
	hanoi(7).


