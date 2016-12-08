/*

	El acertijo del lobo, la cabra y la col es un popular juego de lógica. Se sabe que existe al menos desde el siglo IX y que forma parte 		del folclore de un gran número de grupos étnicos.


	Hace mucho tiempo un granjero fue al mercado y compro un lobo, una cabra y una col. Para volver a su casa tenia que cruzar un río. El 		agricultor dispone de una barca para cruzar a la otra orilla, pero en la barca solo caben él y una de sus compras.

	Si el lobo se queda solo con la cabra se la come, si la cabra se queda sola con la col se la come.

	El reto del granjero era cruzar él mismo y dejar sus compras a la otra orilla del río, dejando cada compra intacta. ¿Como lo hizo?
*/


/*


		DESCRIPCION EL PROBLEMA

->	Para resolver este problema, se puede codificar la configuración
de los 4 objetos (el granjero, el lobo, la cabra, la col) en forma de
lista.

->	Si ' i ' denota la ribera izquierda y ' d ' la ribera derecha, entonces
el estado inicial es el siguiente:
[i, i, i, i] (Todo el mundo está en la orilla de la izquierda)

->	Si el granjero se va con el lobo, entonces la configuración se
convierte en:
[d, d, i, i] (y la cabra se come la col)

->	La configuración final deseada es:
[d, d, d, d] (Todo el mundo está en la orilla de la derecha)

-> En cada movimiento, el granjero cruza el río con el lobo, la cabra,
la col, o nada. Cada movimiento puede ser representado por un
átomo correspondiente: lobo, la cabra, la col, y nada.

->	Esto se puede escribir como un predicado de movimiento(Config,
Movi, SigConfig) donde :
Config es una configuración
Movi es uno de los cuatro movimientos básicos
SigConfig es la configuración que resulta de la aplicación de
esa medida a Config

->	Ahora, hay un movimiento cuando van el granjero y el lobo

mover ([X, X, Cabra, Col], lobo, [Y, Y, Cabra, Col]):- 
cambio(X, Y).

->	Que supone que un predicado de cambio se define como:
cambiar (d, i).
cambiar (i, d).

->	Uno podría haber pensado en sólo escribir:
mover ([X, X, Cabra, Col], lobo, [Y, Y, Cabra, Col]).

->	Pero en este caso X e Y anteriormente podrían unificar a cualquier
átomo (por ejemplo, a la cabra), el cual no es válido. 


->	A continuación, las configuraciones deben ser probadas para la
seguridad (para que nada se coma a nada). Para ello se define un
predicado esIgual(X, Y, Z) que es true si al menos uno de Y o Z es
igual a X.

esIgual(X, X, _).
esIgual (X, _, X).

->	La idea es que si al menos uno, la cabra o el lobo está en el mismo
lado del granjero, y si al menos una, la cabra o la col, está en el
mismo lado del granjero.

->	Una solución se define como una configuración inicial y una lista
de movimientos que le lleva a la configuración del objetivo. Una
solución para [d, d, d, d] sería la lista vacía (no se necesitan
movimientos).

De lo contrario, una solución se define recursivamente como una
movida que le lleva a una configuración segura, seguido de una
solución. 

*/



%cambiar

cambiar(d,i).
cambiar(i,d).

%mover

mover([X,X,Cabra,Col],lobo,[Y,Y,Cabra,Col]):-
cambiar(X,Y).

mover([X,Lobo,X,Col],cabra,[Y,Lobo,Y,Col]):-
cambiar(X,Y).

mover([X,Lobo,Cabra,X],col,[Y,Lobo,Cabra,Y]):-
cambiar(X,Y).

mover([X,Lobo,Cabra,C],nada,[Y,Lobo,Cabra,C]):-
cambiar(X,Y).

%Revisar

esigual(X,X,_).
esigual(X,_,X).

%verificar

verificacion([Granjero,Lobo,Cabra,Col]):-
esigual(Granjero,Cabra,Lobo),
esigual(Granjero,Cabra,Col).

%Hallar solucion

solucion([d,d,d,d],[]).


solucion(Config,[Movi|Rest]):-
mover(Config,Movi,SigConfig),
verificacion(SigConfig),
solucion(SigConfig,Rest).

/*  Puede consultar en prolog lo siguiente 

  ? - Length (X, 7), solución ([i, i, i, i], X).
  
 */
