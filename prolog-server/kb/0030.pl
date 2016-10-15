% SWI PROLOG CODE - PEDRO VILCHEZ V-23.722.862%
%PR's Fundamentos del álgebra lineal%

% En estas PR, busco establecer un sistema de
% Pregunta-Respuesta que permita evaluar inmediatamente la validez de la
% respuesta que proponga el usuario
%
% Tambien dejo una propuesta de estructura de matrices que no funciona
% del todo bien por si alguien quiere corregir los errores.

%size([],0).
%size([X|Y],N):- size(Y,N1),N is N1+1.

%vector(N,[X|Y]):-
	%size([X|Y],N).

%matrix(Nr, Nc, [X|[Y|W]]):-
	%vector(Nr, [X|[Y|W]]).
	%vector(Nc,X).
	%(   vector(Nc,Y); vector(0,Y)).


% Las matrices en las siguientes PR son tratadas como una lista de
% listas en donde cada lista de la lista principal, equivale a una fila
% de la matriz


pr(0030-1,['Una ','matriz ','A',X,x,Y,'es:'],[un,arreglo,de,X,'filas',por,Y,'columnas.'], 20/20, [matrices]).

pr(0030-2,['Los elementos de una matriz, se llaman entradas y se denotan de la forma aij donde i es la fila y j la columna. Sea la matriz A=[[',X11,',',X12,'],[',X21,',',X22,']]','los elementos a12 y a21 respectivamente son:'],[R12, R21],20/20,[matrices]):-
	X11=:=R12,
	X21=:=R21.

pr(0030-3,['Dos matrices son iguales si y solo si cada una de sus entradas son iguales. Sea la igualdad: [[a+b,c+d],[c-d,a-b]]=[[4,6],[10,2]] Determine los valores de a, b, c, d.' ],[A,B,C,D],20/20,[matrices]):-
	A+B=:=4,
	C+D=:=6,
	C-D=:=10,
	A-B=:=2.

pr(0030-4,['Sean dos matrices A(',X,'x',Y,') y B(',M,'x',N,'), la suma de A+B esta definida'],['La suma de matrices esta definida solo si tienen el mismo numero de filas y columnas'],20/20,[matrices]):-
	X=:=M,
	Y=:=N.

pr(0030-5,['Determine el valor de A+B siendo A(2x2)=[[',A,',',B,'],[',C,',',D,']] y B(2x2)=[[',E,',',F,'],[',G,',',H,']]'],['[[',AB1,',',AB2,'],[',AB3,',',AB4,']]'],20/20,[matrices]):-
	AB1 is A+E,
	AB2 is B+F,
	AB3 is C+G,
	AB4 is D+H.

pr(0030-6,['Determine el valor de A+B siendo A(3x3)=[[',A,',',B,',',C,'],[',D,',',E,',',F,'],[',G,',',H,',',I,']] y B(2x2)=[[',J,',',K,',',L,'],[',M,',',N,',',O,'],[',P,',',Q,',',R,']]'],['[[',AB1,',',AB2,',',AB3,'],[',AB4,',',AB5,',',AB6,'],[',AB7,',',AB8,',',AB9,']]'],20/20,[matrices]):-
	AB1 is A+J,
	AB2 is B+K,
	AB3 is C+L,
	AB4 is D+M,
	AB5 is E+N,
	AB6 is F+O,
	AB7 is G+P,
	AB8 is H+Q,
	AB9 is I+R.

pr(0030-7,['Sea A(2x2)=[[',A11,',',A12,'],[',A21,',',A22,']] y B(2x2)=[[',B11,',',B12,'],[',B21,',',B22,']] Calcule el valor de A+B'],[[A11+B11,A12+B12],[A21+B21,A22+B22]],20/20,[matrices]).


pr(0030-8,['Sean dos matrices A(',X,'x',Y,') y B(',M,'x',N,'), el producto de AB esta definido.'],['El producto de matrices esta definido solo si el numero de columnas de A y el numero de filas de B coinciden.'],20/20,[matrices]):-
	Y=:=M.

pr(0030-9,['Sean dos matrices A(',X,'x',Y,') y B(',M,'x',N,'), el producto de BA esta definido.'],['El producto de matrices esta definido solo si el numero de columnas de B y el numero de filas de A coinciden.'],20/20,[matrices]):-
	X=:=N.

pr(0030-10,['Determine el valor de AB siendo A(2x2)=[[',A,',',B,'],[',C,',',D,']] y B(2x2)=[[',E,',',F,'],[',G,',',H,']]'],['[[',I,',',J,'],[',K,',',L,']]'],20/20,[matrices]):-
	I is A*E+B*G,
	J is A*F+B*H,
	K is C*E+D*G,
	L is C*F+D*H.

pr(0030-11,['Determine el valor de BA siendo A(2x2)=[[',A,',',B,'],[',C,',',D,']] y B(2x2)=[[',E,',',F,'],[',G,',',H,']]'],['[[',I,',',J,'],[',K,',',L,']]'],20/20,[matrices]):-
	I is A*E+C*F,
	J is E*B+F*D,
	K is G*A+H*C,
	L is G*B+D*H.

% En la pr 0028-12, se debe especificar al menos el valor de una fila
% si se quiere conocer una de las infinitas respuestas posibles
pr(0030-12, ['Sea una matriz M2x2=[[1,2],[3,6]]. ','Y una matriz N2x2= [[',A,',',B,'],[',C,',',D,']]','Encuentre los valores de A,B,C,D no nulos tal que MN=0 ' ], [E,F,G,H], 20/20, [matrices]):-
	A+2*C=:=0,
	B+2*D=:=0,
	3*A+6*C=:=0,
	3*B+6*D=:=0, (dif(A,0);
	dif(B,0);
	dif(C,0);
	dif(D,0)),
	E is -2*C,
	F is -2*D,
	G is -A/2,
	H is -B/2.

pr(0030-13,['Diga si la siguiente proposicion es verdadera (v) o falsa (f): La suma y el producto de matrices son conmutativos'],[f],20/20,[matrices]).

pr(0030-14,['Diga si la siguiente proposicion es verdadera (v) o falsa (f): La suma de matrices es conmutativa'],[v],20/20,[matrices]).

pr(0030-15,['Diga si la siguiente proposicion es verdadera (v) o falsa (f): El producto de matrices es conmutativo'],[f],20/20,[matrices]).

pr(0030-16,['En la matriz A(4x3)=[[',A,',',B,',',C,'],[',D,',',E,',',F,'],[',G,',',H,',',I,'],[',J,',',K,',',L,']], aplicar las siguientes operaciones de fila y determinar la matriz resultante. Intercambiar la fila 2 por la fila 3, sumar la fila 4 a la fila 1 y multiplicar por VALOR la fila 4 para luego sumarla a la fila 3.'],['[[',M,',',N,',',O,'],[',G,',',H,',',I,'],[',S,',',T,',',U,'],[',P,',',Q,',',R,']]'],20/20,[matrices]):-
	M is A+J,
	N is A+K,
	O is C+L,
	P is 4*J,
	Q is 4*K,
	R is 4*L,
	S is P+G,
	T is Q+H,
	U is R+I.

pr(0030-17,['Se llama matriz inversa de de M a aquella matriz cuyo producto de MM\'=? '],['I o Identidad'],20/20,[matrices]).

pr(0030-18,['Halle de ser posible la matriz inversa de la matriz M(2x2)=[[',A,',',B,'],[',C,',',D,']]'],[[E,F],[G,H]],20/20,[matrices]):-
        not(A*D=:=C*B),
	E is A*D*C/(A*D-B*C),
	F is -B/(A*D-B*C),
	G is -C/(A*D-B*C),
	H is A/(A*D-B*C).

pr(0030-19,['Halle de ser posible la matriz inversa de la matriz M(3x3)=[[2,1,3],[-3,1,0],[0,1,4]]'],['[[',A,',',B,',',C,'],[',D,',',E,',',F,'],[',G,',',H,',',I,']]'],20/20,[matrices]):-
	A =:= 4/11,
	B =:= -5/22,
	C =:= 3/11,
	D =:= 12/11,
	E =:= 8/11,
	F =:= -9/11,
	G =:= -3/11,
	H =:= -2/11,
	I =:= 5/11.


pr(0030-20,['Diga si la siguiente proposicion es verdadera (v) o falsa (f):Las matrices de orden (nxn) que tienen matriz inversa, junto al operador +, no forman un grupo abeliano'],[f],20/20,[matrices]).

pr(0030-21,['Diga si la siguiente proposicion es verdadera (v) o falsa (f):Las matrices de orden (nxn) que tienen matriz inversa, junto al operador producto, no forman un grupo abeliano'],[v],20/20,[matrices]).

pr(0030-22,['Sean las matrices A(2x3)=[[',A,',',B,',',C,'],[',D,',',E,',',F,']] y B(3x2)=[[',G,',',H,'],[',I,',',J,'],[',K,',',L,']] Hallar la matriz traspuesta de AB'],['[[',M,',',N,'],[',O,',',P,']]'],20/20,[matrices]):-
	M is A*G+B*I+C*K,
	N is G*D+E*I+F*K,
	O is A*H+B*J+C*L,
	P is D*H+E*J+F*L.

pr(0030-23,['Hallar la matriz traspuesta de A(2x2)=[[',A,',',B,'],[',C,',',D,']]'],['[[',A,',',C,'],[',B,',',D,']]'],20/20,[matrices]).

pr(0030-24,['Hallar la matriz traspuesta de A(2x3)=[[',A,',',B,',',C,'],[',D,',',E,',',F,']]'],['[[',A,',',D,'],[',B,',',E,'],[',C,',',F,']]'],20/20,[matrices]).

pr(0030-25,['Hallar la matriz traspuesta de A(3x2)=[[',A,',',B,'],[',C,',',D,'],[',E,',',F,']]'],['[[',A,',',C,',',E,'],[',B,',',D,',',F,']]'],20/20,[matrices]).

pr(0030-26,['Hallar la matriz traspuesta de A(3x3)=[[',A,',',B,',',C,'],[',D,',',E,',',F,'],[',G,',',H,',',I,']]'],['[[',A,',',D,',',G,'],[',B,',',E,',',H,'],[',C,',',F,',',I,']]'],20/20,[matrices]).

pr(0030-27,['Determine el valor de K para que el producto de KA traspuesta y KA sea 1, si A=[[',A,'],[',B,'],[',C,']]'],['sqrt(',1/D,'),-sqrt(',1/D,')'],20/20,[matrices]):-
	D is A*A+B*B+C*C,
	(dif(A,0);dif(B,0);dif(C,0)).


pr(0030-28,['Determine las condiciones para que la matriz A(3x3)=[[A,B,C],[D,E,F],[G,H,I]] sea simétrica.'],['B=D, C=G, F=H'],20/20,[matrices]).

pr(0030-29,['¿Qué condicion es necesaria para que un producto AB de como resultado una matriz simétrica?'],['AB=BA'],20/20,[matrices]).

pr(0030-30,['Escriba una matriz normal de 2x2 (A*At=At*A)'],['[[',A,',',B,'],[',C,',',D,']]'],20/20,[matrices]):-
	B*B =:= C*C,
	A*C+B*D =:= A*B+C*D.


pr(0030-31,['Calcular el determinante de la matriz A(2x2)=[[',A,',',B,'],[',C,',',D,']]'],[E],20/20,[matrices]):-
	E is A*D-C*B.

pr(0030-32,['Calcular el determinante de la matriz A(3x3)=[[',A,',',B,',',C,'],[',D,',',E,',',F,'],[',G,',',H,',',I,']]'],[J],20/20,[matrices]):-
	J is A*E*I+B*F*G+D*H*C-(C*E*G+F*H*A+B*D*I).

pr(0030-33,['Determine, por medio de la determinante si la matriz A(2x2)=[[',A,',',B,'],[',C,',',D,']] es no singular.'],['true'],20/20,[matrices]):-
	A*D-C*B =:= 0.

pr(0030-34,['Determine, por medio de la determinante si la matriz A(3x3)=[[',A,',',B,',',C,'],[',D,',',E,',',F,'],[',G,',',H,',',I,']] es no singular.'],['true'],20/20,[matrices]):-
	A*E*I+B*F*G+D*H*C-(C*E*G+F*H*A+B*D*I) =:= 0.

pr(0030-35,['Determine si el sistema de ecuaciones ',A,'x1+',B,'x2+',C,'x3=',J,'  ',D,'x1+',E,'x2+',F,'x3=',K,'  ',G,'x1+',H,'x2+',I,'x3=',L,' tiene solución, si es asi de la solución'],[X1,X2,X3],20/20,[matrices, 'sistemas de ecuaciones']):-
	dif(A,0),
	dif(G,0),
	dif(D,0),
	dif((A*G*E-B*G*D)*(D*H-G*E),0),
	dif(((D*I-G*F)*(A*G*E-B*G*D)-(A*G*F-C*G*D)*(D*H-G*E)),0),
	X1*A+X2*B+X3*C =:= J,
	X1*D+X2*E+X3*F =:= K,
	X1*G+X2*H+X3*I =:= L.

pr(0030-36,['Determine si el sistema de ecuaciones ',A,'x1+',B,'x2=',E,'  ',C,'x1+',D,'x2=',F,' tiene solución, si es asi de la solución'],[X1,X2],20/20,[matrices]):-
	dif(A,0),
	dif(C,0),
	dif(D*A,B*C),
	X2 is (F*A-C*E)/(D*A-B*C),
	X1 is (E-B*X2)/A,
	X1*A+X2*B =:= E,
	X1*C+X2*D =:= F.

pr(0030-37,['¿Cuándo una matriz A es ortogonal? (Exprese de ser necsario At como traspuesta y A\' como inversa e I como identidad'],['At*A=A*At=I'],20/20,[matrices]).

pr(0030-38,['De un ejemplo de una matriz de 2x2 ortogonal'],['[[',A,',',B,'],[',C,',',D,']]'],20/20,[matrices]):-
	B*B =:= C*C,
	A*C+B*D =:= A*B+C*D,
	A*B+C*D =:= 0,
	B*B+D*D =:= 1,
	A*A+C*C =:= 1.

pr(0030-39,['Dados los vectores A=(',A,',',B,') y B=(',C,',',D,') determine si son linealmente dependientes, de ser asi indique el valor de K para que KA=B'],['(S)'],20/20,[matrices]):-
	S1 is A/C,
	S2 is B/D,
	S1 =:= S2.

pr(0030-40,['Dados los vectores A=(',A,',',B,',',C,') y B=(',D,',',E,',',F,') determine si son linealmente dependientes, de ser asi indique el valor de K para que KA=B'],[S1],20/20,[matrices]):-
	S1 is A/D,
	S2 is B/E,
	S3 is C/F,
	S1 =:= S2,
	S1 =:= S3.

pr(0030-41,['Dada la matriz A(2x2)=[[',A,',',B,'],[',C,',',D,']] halle su polinomio característico.'],['P(x)=(',A,'-X)*(',D,'-X)-',B,'*',C,''],20/20,[matrices]).

pr(0030-42,['Dada la matriz A(3x3)=[[',A,',',B,',',C,'],[',D,',',E,',',F,'],[',G,',',H,',',I,']] halle su polinomio característico.'],['P(x)=(',A,'-X)*(',E,'-X)*(',I,'-X)+',B,'*',F,'*',G,'+',D,'*',H,'*',C,'-(',C,'*(',E,'-X)*',G,'+',F,'*',H,'*(',A,'-X)+',B,'*',D,'*(',I,'-X))'],20/20,[matrices]).

pr(0030-43,['Dada la matriz A(2x2)=[[',A,',',B,'],[',C,',',D,']] halle sus autovalores.'],[X],20/20,[matrices]):-
	(A-X)*(D-X) =:= B*C.

pr(0030-44,['Dada la matriz A(3x3)=[[',A,',',B,',',C,'],[',D,',',E,',',F,'],[',G,',',H,',',I,']] halle sus autovalores.'],[X],20/20,[matrices]):-
	(A-X)*(E-X)*(I-X)+B*F*G+D*H*C-(C*(E-X)*G+F*H*(A-X)+B*D*(I-X)) =:= 0.

pr(0030-45,['¿Cómo se obtiene el polinomio característico de la matriz A?'],['Consiguiendo det(A-IX)'],20/20,[matrices]).

pr(0030-46,['¿Cómo se obtienen los autovalores de la matriz A?'],['Consiguiendo las raices de su polinomio característico.'],20/20,[matrices]).

pr(0030-47,['¿Cómo se obienen los autovectores asociados a un autovalor a de la matriz A?'],['Resolviendo el sistema de ecuaciones que resulta de A*V=a*V'],20/20,[matrices]).

pr(0030-48,['¿Qué es un autoespacio?'],['Es el espacio vectorial generado por los autovectores de una matriz'],20/20,[matrices]).

pr(0030-49,['¿Por qué podemos afirmar que los autovectores de una matriz A son linealmente independientes?'],['Porque conforman una base del autoespacio'],20/20,[matrices]).

pr(0030-50,['¿Qué requerimientos hay para que un conjunto de vectores conformen una base de un espacio vectorial?'],['Cualquier vector perteneciente al espacio vectorial se pueda escribir como combinacion lineal de ellos y son linealmente independientes.'],20/20,[matrices]).

%2 preguntas adicionales sobre lenguaje musical :D
% Con esas 2 se puede hacer un buen trabajo de lógica en algun curso
% posterior

pr(0030-51,['¿Cuál es el orden de los bemoles en una armadura de clave?'],['Si, Mi, La, Re, Sol, Do, Fa'],20/20,['lenguaje musical']).

pr(0030-52,['¿Cuál es el orden de los sostenidos en una armadura de clave?'],['Fa, Do, Sol, Re, La, Mi, Si'],20/20,['lenguaje musical']).



