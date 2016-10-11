/*
Problema: 
		El Sr. Ido, el químico, tiene seis frascos llenos de líquidos coloreados.
		Hay  uno de cada color: rojo, anaranjado, amarillo, verde, azul y violeta.
		El señor Ido sabe que algunos de esos líquidos son tóxicos, pero no recuerda cuales...

		Sin embargo, sí recuerda algunos datos. En cada uno de los siguientes pares de frascos hay uno con veneno y otro no:
			a) los frascos violeta y azul
			b) los frascos rojo y amarillo
			c) los frascos azul y anaranjado

		El Sr. Ido recuerda también que en estos otros pares de frascos hay uno sin veneno:
			d) el violeta y el amarillo
			e) el rojo y el anaranjado
			f) el verde y el azul

Añade el Sr. Ido, el líquido del frasco rojo no es venenoso. ¿Qué frascos tienen veneno?

*/

uno_toxico_otro_no(violeta,azul).
uno_toxico_otro_no(rojo,amarillo).
uno_toxico_otro_no(azul,anaranjado).

uno_no_toxico(violeta,amarillo).
uno_no_toxico(rojo,anaranjado).
uno_no_toxico(verde,azul).

/*Se utilizan dos predicados en la resolución de este acertijo:
	no_toxico y tóxico, no_tóxico es verdadero cuando su único sujeto es un frasco que no contiene veneno, 
	en cambio tóxico, es verdadero cuando su sujeto es un frasco que sí contiene veneno.
*/

toxico(X) :-
	(uno_toxico_otro_no(X,Y); uno_toxico_otro_no(Y,X)),
	no_toxico(Y).

/*Pares de frascos en los que hay uno sin veneno  */

no_toxico(X) :-
(uno_no_toxico(X,Y); uno_no_toxico(Y,X)),
toxico(Y).

% El frasco rojo no es venenoso:
no_toxico(rojo).

%Ejemplo: findall(X,toxico(X),L).






