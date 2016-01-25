%Yurley S. Barrios M.
%C.I. 22.986.327

%Suma de todos los elementos de una lista de numeros

suma_elem_lista([], 0).
suma_elem_lista([X|Y], S):-
		suma_elem_lista(Y, S2),
		S is S2 + X.

pr(['La suma de los elementos de una lista' ,X ],[S], 'Yurley Barrios, https://xpasos.wordpress.com/2011/05/18/prolog-suma-elementos-de-una-lista/'):-suma_elem_lista(X,S).

%Longitud de una lista
longitud([],0).
longitud([_|T],N):-
		longitud(T,N0), 
		N is N0 + 1.

pr(['La longitud de una lista ' ,X ],[N], ['Yurley Barrios']):-longitud(X,N).

%Media de un conjunto de numeros 
%Para calcular la media utilizo los métodos anteriores, suma_elem_lista(X,S) y longitud(X,N)

media(M,Ma):-
		suma_elem_lista(M, S),
		longitud(M,T),
		Ma is S/T.

pr(['Media aritmetica'], ['Es el valor característico de una serie de datos cuantitativos objeto de estudio que parte del principio de la esperanza matemática o valor esperado'], ['Yurley Barrios https://es.wikipedia.org/wiki/Media_aritm%C3%A9tica'])	.

pr('Como se obtiene la media aritmetica', ['A partir de la suma de todos sus valores dividida entre el número de elementos'], ['Yurley Barrios']).

pr(['La media de un conjunto de numeros' ,[media_de,M, 'es']],[Ma], ['Yurley Barrios']). 


