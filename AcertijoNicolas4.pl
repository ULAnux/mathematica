/*

			                                Los Rufianes

		Pepe y Juan son fufianes, Carlos y Pepe como su 	nombre lo indica, son nobles. Juan es un plebeyo. Laura
    y Julieta son damas, un hombre dijo que  Julieta es Hermasa.

	Tenemos algunas afirmaciones:

	Los plebeyos desean a cualquier dama, mientras que 	los nobles solo a aquellas que son hermosas.

	Los rufuanes, para satisfacer sus instintos, raptan a las personas que desean.


	(1) ¿Quien puede raptar a Julieta?
	(2) ¿Qué noble es un rufian?
	(3) ¿Quien es susceptible de ser raptada por Carlos?
	(4) ¿A quien desea Juan?
	 
*/

%Afirmaciones.

es(pepe,rufian).
es(juan,rufian).
es(carlos,noble).
es(pepe,noble).
es(juan,plebeyo).
es(laura,dama).
es(julieta,dama).
es(julieta,hermosa).

%Reglas

desea(X,Y) :- es(X,plebeyo), es(Y,dama).

desea(X,Y) :- es(X,noble) , es(Y,hermosa).

rapta(X,Y) :- es(X,rufian), desea(X,Y).


/* Pueden Consultar en prolog lo siguiente 

	?- desea(juan,X).
*/ 
