%Tomado de: http://csrg.inf.utfsm.cl/~rbonvall/lp/docs/bote.pl

%Problema:  
/*Un granjero tiene un lobo, una cabra y un saco  de pasto, y debe
	cruzarlos de la orilla izquierda del rio a la orilla derecha.
	 El bote solo tiene una capacidad para dos, es decir que solo entra
	 el granjero y una cosa mas, ya sea el lobo, la cabra o el saco de pasto.

	 Si el lobo y la cabra estan en la misma orilla, y el granjero no esta junto a
 	ellos, el lobo se va a comer a la cabra.  Lo mismo ocurre si quedan la cabra y el saco de pasto.
 
	Que secuencia de cruces tiene que hacer el granjero para cumplir con su tarea? */ 

%Solucion

distinto(izq, der).
distinto(der, izq).

% Relacion entre un estado y el siguiente cuando se cruza algo en el bote.
cruzar([X, X, Cabra, Pasto],    lobo,  [Y, Y, Cabra, Pasto]) :- distinto(X, Y).
cruzar([X, Lobo, X, Pasto],     cabra, [Y, Lobo, Y, Pasto])  :- distinto(X, Y).
cruzar([X, Lobo, Cabra, X],     pasto, [Y, Lobo, Cabra, Y])  :- distinto(X, Y).
cruzar([X, Lobo, Cabra, Pasto], nadie, [Y, Lobo, Cabra, Pasto]) :- distinto(X, Y).


uno_igual(X, X, _).
uno_igual(X, _, X).

seguro([Granjero, Lobo, Cabra, Pasto]) :-
    uno_igual(Granjero, Cabra, Lobo),
    uno_igual(Granjero, Cabra, Pasto).

% Cuando estan todos en la orilla derecha,  el problema ya esta resuelto.
solucion([der, der, der, der], []).

% A partir del estado actual, se tiene una solucion cuando hay un cruce que
% lleva a un estado seguro, y ese estado nuevo tambien lleva a una solucion.
solucion(Estado_Actual, [Cruce | Resto_cruces]) :-
    cruzar(Estado_Actual, Cruce, Estado_Siguiente),
    seguro(Estado_Siguiente),
    solucion(Estado_Siguiente, Resto_cruces).

%Ejemplo:
		%length(L, 7), solucion([izq, izq, izq, izq], L).

%Nota: La restriccion sobre el largo de la lista (7) es para evitar recursion infinita.
