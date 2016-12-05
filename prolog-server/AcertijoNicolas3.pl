/*

		                    LOS JARROS DE AGUA

	Se dispone de dos jarros, uno con una capacidad de 3 litros, y otro con una
	capacidad de 4 litros. Ninguno de los dos tiene marcas que permitan medir cantidades
	que no sean las de sus propias capacidades.

	Existe una canilla que permite llenar los jarros con agua y un sumidero donde se
	puede vaciar los mismos. El problema consiste en encontrar cuál es la secuencia de
	movimientos de llenado, vaciado y trasvase que permitan obtener exactamente dos
	litros de agua en el jarro de 4 litros.
*/

movida(A3, D3, A4, D4, Movimiento).


/*	
		En la cuál los sujetos son:

	A3: Nivel del jarro de 3 litros antes del movimiento.
	D3: Nivel del jarro de 3 litros después del movimiento.
	A4: Nivel del jarro de 4 litros antes del movimiento.
	D4: Nivel del jarro de 4 litros después del movimiento.
	Movimiento: Descripción del movimiento hecho.
*/

/*	Como cada una de estas tres operaciones se puede aplicar a cada uno de los dos jarros,
existe un total de seis operaciones permitidas, que da lugar a cada una de las seis ocurrencias del
predicado movida*/

movida(A3, 3, X, X, [llenar_el_jarro_de_tres_litros]) :-
A3 < 3.

/*	Algo similar se describe para el llenado del jarro de cuatro litros */

movida(X, X, A4, 4, [llenar_el_jarro_de_cuatro_litros]) :-
A4 < 4.

/*	Con respecto al vaciado de los jarros, la condición es que no estén previamente vacíos,
mientras que después de la operación su contenido es cero */

movida(A3, 0, X, X, [vaciar_el_jarro_de_tres_litros]) :-
A3 /= 0.

movida(X, X, A4, 0, [vaciar_el_jarro_de_cuatro_litros]) :-
A4 /= 0.

/*	Para el pasaje de agua de un jarro al otro, las reglas son un poco mas complejas. La
relación movida es verdadera si existe un predicado que describa la acción de trasvasar, ya que
movida sólo relaciona las cantidades antes y después del trasvase, sin interesar como se hace
*/

movida(A3, D3, A4, D4, [pasar_lo_posible_del_de_4-l_al_de_3_l]) :-
trasvase(A4, D4, 3, A3, D3).

movida(A3, D3, A4, D4, [pasar_lo_posible_del_de_3_l_al_de_4_l]) :-
trasvase(A3, D3, 4, A4, D4).

/*		El predicado TRASVASE relaciona cinco sujetos

donde

	AE: Nivel anterior al trasvase en el jarro del cual se extrae agua.
	PE: Nivel posterior al trasvase en el jarro del cual se extrae agua.
	CD: Capacidad del jarro destino.
	AD: Nivel anterior al trasvase en el jarro destino.
	PD: Nivel posterior al trasvase en el jarro destino.
*/

trasvase(AE, PE, CD, AD, PD).

/*La relación TRASVASE, describe en que casos es posible trasvasar, como se produce el
trasvase, y como se modifican los valores en juego debido a la operación*/

trasvase(AE, PE, CD, AD, PD) :-
AE /= 0,
CD /= AD,
L is CD - AD,
minimo(L, AE, M),
PE is AE - M,
PD is AD + M.

/*El predicado minimo relaciona dos números con el menor de ellos, existiendo tres
situaciones posibles: igualdad, el primero menor y el segundo menor*/

minimo(X, X, X).

minimo(X, Y, X) :-
X < Y.

minimo(X, Y, Y) :-
Y < X.

/*	Una vez definidas estas reglas referidas a las condiciones que debe cumplir el algoritmo
solución, se puede plantear una regla que es verdadera cuando existe solución para un número
dado de operaciones. Se propone una regla de la forma*/

prueba(CA3, CA4, N, MAX, [X|Y]).

/*		Donde los predicados son
	
	CA3: Cantidad de agua contenida en el jarro de tres litros.
	CA4: Cantidad de agua contenida en el jarro de cuatro litros.
	N : Número de operación
	MAX: Número máximo de movidas permitidas
	[y|z]: [X|Y]: Lista de soluciones
*/

prueba(X, 2, Y, Y, []) :- !.

/*	Juntando todas las condiciones anteriores en una regla, queda definido el caso general
de prueba*/

Prueba(CA3, CA4, N, MAX, [X|Y]) :-
N < MAX,
N2 is N + 1,
Movida(CA3, D3, CA4, D4, X),
Prueba(D3, D4, N2, MAX, Y).

/*Esta base puede consultarse con prueba, teniendo en cuenta que al comienzo los dos
jarros están vacíos, onsultar en prolog ell siguiente predicado.

?-prueba(0, 0, 0, 6, X).
*/

