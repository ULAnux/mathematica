%Problema:

/*
Dos cabreros se encuentran en un cruce y se produce
el siguiente diálogo:
			- Dame una cabra, para que tengamos las mismas
			- Mejor dame tú una a mí, para que tenga yo el doble que tú
¿Cuántas cabras tiene cada cabrero?
*/


rebaño(C1,C2) :-
between(1,10,C1), 
between(1,10,C2), 
C2-1 =:= C1+1,
2*(C1-1) =:= C2+1.

%Ejemplo:
		%rebaño(C1,C2).
		%C1= 5, C2= 7;
