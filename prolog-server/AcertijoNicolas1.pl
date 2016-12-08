/*
 
	        		Acertijo de Herencia Familiar


	Se dice que Clara es madre de Pedro y que Pedro a su vez es padre de José, tambien tenemos que Ana es madre de Clara y que José es padre de Clara.

	¿Es Ana bisabuela de José?

*/

/* Declaramos las Afirmaciones.*/

progenitor(clara,pedro).
progenitor(pedro,jose).
progenitor(ana,clara).
progenitor(jose,clara).

/*Declaraciones de las funciones, para resolver el acertijo*/

abuelo(X,Y):- progenitor(X,Z),progenitor(Z,Y).



bisabuelo(Z,Y):- progenitor(X,Z),abuelo(Z,Y).


/* Ejemplo podria ser 

	bisabuelo(ana,jose).

Introducir en Prolog  */
