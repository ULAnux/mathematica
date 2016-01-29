elminar(X,[Y|U],[Y|R]):- elminar(X,U,R).
elminar(X,[X|R],R).

%conplemento del vacio es el universo
complemento([],Un,Un):-Un \= [].
%conplemento del universo es el vacio
complemento(Un,[],[]):-Un \= [].
complemento([X|Sc],Un,R):- elminar(X,Un,Su), complemento(Sc,Su,R),!.


%Ejemplo complemento de un conjunto
% ?- pr(_,[complemento_de,[a,q,e,r],universo,[f,1,3,4,6,a,e,y,r,w,q],=],[R],_,_).
pr(0004-1,[complemento_de,Su,universo,Un,=],[R],20/20,'Robi Antonio Rondon Peña'):-subset(Su,Un),complemento(Su,Un,R),!.

%Ejemplo de (A')' = A
%?- pr(_,[complemento_del,[complemento_de,[a,q,e,r]],universo,[f,1,3,4,6,a,e,y,r,w,q],=],[R],_,_).
pr(0004-2,[complemento_del,[complemento_de,Su],universo,Un,=],[R],20/20,'Robi Antonio Rondon Peña'):-!, complemento(Su,Un,R1),complemento(R1,Un,R),!.

%Ejemplo de A unido A' igual al universo
%?- pr(_,[conjunto,[1,2,q],unido,con_el,complemento_del_conjunto,en_universo,[1,2,3,q,e],=],[R],_,_).

%pr(0004-3,[conjunto,Conjunto,unido,con_el,complemento_del_conjunto,en_universo,Un,=],[R],20/20,'Robi Antonio Rondon Peña'):- subset(Conjunto,R),Un == [],Un is R,!.
pr(0004-4,[conjunto,Conjunto,unido,con_el,complemento_del_conjunto,en_universo,Un,=],[R],20/20,'Robi Antonio Rondon Peña'):- subset(Conjunto,Un),complemento(Conjunto,Un,R1),union(Conjunto,R1,R),!.

%Ejemplo A intersectado A' igual al vacio
%?- pr(_,[conjunto,[1,2,q],intersectado,con_el,complemento_del_conjunto,en_universo,[1,2,3,q,e],=],[R],_,_).
pr(0004-5,[conjunto,Conjunto,intersectado,con_el,complemento_del_conjunto,en_universo,Un,=],[R],20/20,'Robi Antonio Rondon Peña'):- !, subset(Conjunto,Un),complemento(Conjunto,Un,R1),intersection(Conjunto,R1,R),!.

%Ejemplo A unido con el vacio es el A
%?- pr(_,[conjunto,[1,2,q],unido,con_el,[],=],[R],_,_).
pr(0004-6,[conjunto,Conjunto,unido,con_el,[],=],[Conjunto],20/20,'Robi Antonio Rondon Peña'):-Conjunto \=[],!.

%Ejemplo A intersectado con el vacio es vacio
%?- pr(_,[conjunto,[1,2,q],intersectado,con_el,[],=],[R],_,_).
pr(0004-7,[conjunto,Conjunto,intersectado,con_el,[],=],[[]],20/20,'Robi Antonio Rondon Peña'):-Conjunto \=[],!.

%Ejemplo A intersectado con el universo es A
%?- pr(_,[conjunto,[1,2,q],intersectado,con_el,universo,[1,2,3,q,e],=],[R],_,_).
pr(0004-8,[conjunto,Conjunto,intersectado,con_el,universo,Un,=],[Conjunto],20/20,'Robi Antonio Rondon Peña'):-subset(Conjunto,Un),!.

%Ejemplo A unido con el universo es universo
%?- pr(_,[conjunto,[1,2,q],unido,con_el,universo,[1,2,3,q,e],=],[R],_,_).
pr(0004-9,[conjunto,Conjunto,unido,con_el,universo,Un,=],[Un],20/20,'Robi Antonio Rondon Peña'):-subset(Conjunto,Un),!.

%(A Unido B)'  = A' intersectado B' (De Morgan)
%?- pr(_,[complemento_de,[[1,3,q],unido,[2,4,t]],universo,[1,2,3,4,q,t,e,r],= ],[complemento_de ,[1,3,q],intersectado_con,complemento_de,[2,4,t]],_,_).
pr(0004-10,[complemento_de,[A,unido,B],universo,Un,=],[complemento_de,C,intersectado_con,complemento_de,D],20/20,'Robi Antonio Rondon Peña'):- A==C, B==D,subset(A,Un),subset(B,Un),union(A,B,R1),complemento(A,Un,R2),complemento(B,Un,R3),complemento(R1,Un,R4),intersection(R2,R3,R5),subset(R4,R5),!.

%(A intersectado B)' = A' unido B' (De Morgan)
%?- pr(_,[complemento_de,[[1,3,q],intersectado,[2,4,t]],universo,[1,2,3,4,q,t,e,r],= ],[complemento_de ,[1,3,q],unido_con,complemento_de,[2,4,t]],_,_).
pr(0004-11,[complemento_de,[A,intersectado,B],universo,Un,=],[complemento_de,C,unido_con,complemento_de,D],20/20,'Robi Antonio Rondon Peña'):- !, A==C, B==D,subset(A,Un),subset(B,Un),intersection(A,B,R1),complemento(R1,Un,R2),complemento(A,Un,R3),complemento(B,Un,R4),union(R3,R4,R5),subset(R2,R5),!.


%
%	Desde aqui son nuevas practicas de prolog
%

% A U (B U C) = (A U B) U C asociativa
%?- pr(_,[[3,t,y],unido_con,([4,5,6],unido_con,[w,r,t]),=],[([3,t,y],unido_con,[4,5,6]),unido_con,[w,r,t]],_,_).
pr(0004-12,[A,unido_con,(B,unido_con,C),=],[(D,unido_con,E),unido_con,F],20/20,'Robi Antonio Rondon Peña'):- A==D, B==E, C==F,union(B,C,R1),union(A,R1,R2),union(A,B,R3),union(R3,C,R4),R2==R4,!.

% A intersectado (B intersectado C) = (A intersectado B) intersectado C asociativa
%?- pr(_,[[3,t,y],intersectado_con,([4,5,6],intersectado_con,[w,r,t]),=],[([3,t,y],intersectado_con,[4,5,6]),intersectado_con,[w,r,t]],_,_).
pr(0004-13,[A,intersectado_con,(B,intersectado_con,C),=],[(D,intersectado_con,E),intersectado_con,F],20/20,'Robi Antonio Rondon Peña'):- A==D, B==E, C==F, intersection(B,C,R1),intersection(A,R1,R2),intersection(A,B,R3),intersection(R3,C,R4),R2==R4,!.

%(A U B) intersectado C = (A intersectado C) U (B intersectado C) distributiva
%?- pr(_,[([1,e,4],unido_con,[w,r,t]),intersectado_con,[7,8,9,i],=],[([1,e,4],intersectado_con,[7,8,9,i]),unido_con,([w,r,t],intersectado_con,[7,8,9,i])],_,_).
pr(0004-14,[(A,unido_con,B),intersectado_con,C,=],[(D,intersectado_con,F),unido_con,(E,intersectado_con,F)],20/20,'Robi Antonio Rondon Peña'):- A==D, B==E, C==F,union(A,B,R1),intersection(R1,C,R2),intersection(A,C,R3),intersection(B,C,R4),union(R3,R4,R5),R2==R5,!.

% (A intersectado B) union C = (A union C) intersectado (B union C) distributiva
%?- pr(_,[([q,w,e,3],intersectado_con,[1,5,7,q,r]),unido_con,[2,r,5,1],=],[([q,w,e,3],unido_con,[2,r,5,1]),intersectado_con,([1,5,7,q,r],unido_con,[2,r,5,1])],_,_).
pr(0004-15,[(A,intersectado_con,B),unido_con,C,=],[(D,unido_con,F),intersectado_con,(E,unido_con,F)],20/20,'Robi Antonio Rondon Peña'):- A==D, B==E, C==F,intersection(A,B,R1),union(R1,C,R2),union(A,C,R3),union(B,C,R4),intersection(R3,R4,R5),R2==R5,!.

% Demostrar que A  B  B'  A'
%?- pr(_,[en_el_universo,[1,2,3,7,4,5,o,p,y,a,8,9,0],([o,y,1],conjunto_de,[o,8,p,3,y,1]),'<->'],[complemeto_de,Bc,conjunto_de,complemento_de,Ac],_,_).
pr(0004-16,[en_el_universo,U,(A,conjunto_de,B),'<->'],[complemeto_de,Bc,conjunto_de,complemento_de,Ac],20/20,'Robi Antonio Rondon Peña'):- !, subset(A,B),subset(B,U),complemento(A,U,Ac),complemento(B,U,Bc),!.

%
%	Desde aqui son nuevas practicas de prolog
%

%la funcion factorial se le agrago ! para que no de error de stack
factorial(A,F):- A == 0, F is 1.
factorial(A,F):- N is (A-1), factorial(N,F1), F is A*F1,!.


pr(0004-17,['Factorial n!','n!'],['el factorial de n o n factorial se define en principio como el producto de todos los numeros enteros positivos desde 1 (es decir, los números naturales) hasta n. La operación de factorial aparece en muchas areas de las matemáticas, particularmente en combinatoria y análisis matemático. ','fuente http://es.wikipedia.org/wiki/Factorial'],20/20,'robi Antonio Rondon Peña'):-!.
pr(0004-18,['Factorial n!',[factorial_de,F]],[R],20/20,'Robi Antonio Rondon Peña'):- factorial(F,R),!.


combinatoria(N,M,R):- (N \= 0, M == 0, R is 1, nl) ; (N \= 0, M \= 0, factorial(N,R1),R4 is (N - M),factorial(R4,R2),factorial(M,R3), R is( R1 / (R2*R3) ),nl ),nl.

permutaciones(N,M,R):-(N \= 0, M == 0, R is 1, nl) ; (N \= 0, M \= 0, factorial(N,R1),R4 is (N - M),factorial(R4,R2), R is( R1 / R2 ) ).

pr(0004-19,['combinatoria','n combinatoria de m'],['La combinatoria es una rama de la matemática perteneciente al area de matematicas discretas que estudia la enumeracion, construcción y existencia de propiedades de configuraciones que satisfacen ciertas condiciones establecidas.','http://es.wikipedia.org/wiki/Combinatoria'],20/20,'Robi Antonio Rondon Peña'):-!.
pr(0004-20,['combinatoria',[N,combinatoria_de,M]],[R],10/20,'Robi Antonio Rondon Peña'):-combinatoria(N,M,R),!.

pr(0004-21,['permutacion','n permutacion de m'],['En matemáticas, una permutación es la variación del orden o de la disposición de los elementos de un conjunto.','fuente http://es.wikipedia.org/wiki/Permutaci%C3%B3n'],20/20,'Robi Antonio Rondon Peña'):-!.
pr(0004-22,['permutacion',[N,permutacion_de,M]],[R],10/20,'Robi Antonio Rondon Peña'):- permutaciones(N,M,R),!.


pr(0004-23,['triangulo','pascal'],[' es una representación de los coeficientes binomiales ordenados en forma triangular. Es llamado así en honor al matemático francés Blaise Pascal, unos de las secuencias de numeros que hallamos en el triangulo de pascal, son: los numeros naturales, los numeros triangulares, los numeros cuandrados...','parte del texto es de la fuente http://es.wikipedia.org/wiki/Tri%C3%A1ngulo_de_Pascal'],15/20,'Robi Antonio Rondon Peña'):-!.


numero_triangular(N,R):- N > 0, (R1 is (N *( N + 1)) ), R is R1/2.

pr(0004-24,['numeros','triangulares'],['Un numero triangular es aquel que puede recomponerse en la forma de un triangulo equilatero (por convencion, el primer numero triangular es el 1). Los numeros triangulares, junto con otros numeros figurados, fueron objeto de estudio por Pitagoras y los Pitagoricos, quienes consideraban sagrado el 10 escrito en forma triangular, y al que llamaban Tetraktys. Estos numeros se halla en el TRIANGULO DE PASCAL','fuente http://es.wikipedia.org/wiki/N%C3%BAmero_triangular'],10/20,'Robi Antonio Rondon Peña'):-!.
pr(0004-25,['numeros','triangulares',[numero_triangular_de,N,'es']],[R],20/20,'Robi Antonio Rondon Peña'):- numero_triangular(N,R),!.

pr(0004-26,['sucesion','fibonacci'],['La sucesion comienza con los numeros 1 y 1^1 y a partir de estos, <<cada termino es la suma de los dos anteriores>>, es la relacion de recurrencia que la define. A los elementos de esta sucesion se les llama numeros de Fibonacci. Esta sucesion fue descrita en Europa por Leonardo de Pisa, matematico italiano del siglo XIII tambien conocido como Fibonacci. Tiene numerosas aplicaciones en ciencias de la computacion, matematicas y teoría de juegos.','fuente http://es.wikipedia.org/wiki/Sucesi%C3%B3n_de_Fibonacci'],10/20,'Robi Antonio Rondon Peña'):-!.


fibonacci(N,R):- (N == 0, nl);(sqrt(5,R1),R2 is (1/R1),R3 is (1 + R1), R4 is (R3 / 2), R5 is ( R4**N ),R6 is (R5*R2),
					R7 is (1 - R1), R8 is (R7 / 2 ),R9 is (R8**N), R10 is (R2*R9), R11 is(R6 - R10), floor(R11,R),! ).
pr(0004-27,['sucesion','fibonacci',[fibonacci_de,N,'es']],[R],20/20,'Robi Antonio Rondon Peña'):-fibonacci(N,R),!.

%
% estas son nuevas
%
torreshanoi(N,R):- R is (2**(N) - 1).
pr(0004-28,['torres','hanoi'],['Las Torres de Hanói es un rompecabezas o juego matemático inventado en 1883 por el matemático francés Éduard Lucas.
Consiste en tres varillas verticales y un número indeterminado de discos que determinarán la complejidad de la solución. No hay dos discos iguales, están colocados de mayor a menor en la primera varilla ascendentemente, y no se puede colocar ningún disco mayor sobre uno menor a él en ningún momento.','fuente: http://html.rincondelvago.com/las-torres-de-hanoi_1.html'],20/20,'Robi Antonio Rondon Peña').
pr(0004-29,['torres','hanoi','juego',N],[R],20/20,'Robi Antonio Rondon Peña'):-torreshanoi(N,R),!.

pr(0004-30,['grupos','anillos'],['En álgebra moderna, un anillo es un sistema algebraico que es una terna formada por un conjunto (A) no vacío y dos operaciones internas, llamadas usualmente "suma" y "producto" (A,+,*), de modo que (A,+) es un grupo conmutativo con elemento neutro (que se designa por 0), y el producto * que es asociativo y es la distributivo respecto de la suma . La inversa de la operación + se llama diferencia y se indica por a - b. En general la operación a.b no tiene inversa 1 Si el producto es conmutativo se trata de un anillo conmutativo y si el anillo posee un elemento neutro para el producto, lo llamaremos anillo con unidad o anillo unitario, el elemento neutro multiplicativo, si existe, se señala como 1.','fuente: http://es.wikipedia.org/wiki/Anillo_(matem%C3%A1tica)'],20/20,'Robi Antonio Rondon Peña'):-!.

pr(0004-31,['grupos','monides'],['Una operacion interna definida en un conjunto S es una funcion *: S X S -> S. Como es usual, dados s1; s2 2 S, escribiremos s1 * s2 en lugar de *(s1; s2). Decimos que * es asociativa si s1 * (s2 * s3) = (s1 * s2) * s3 para todo s1; s2; s3 2 S, y que es conmutativa o abeliana si s1 * s2 = s2 * s1 para todo s1, s2 pertenece a S. Un magma es un conjunto no vacio S provisto de una operacion interna. Usualmente hablaremos de un magma S, mencionando solo al conjunto subyacente.','fuente desconicido'],20/20,'Robi Antonio Rondon Peña'):-!.

pr(0004-32,['algebra','boole'],['Álgebra de Boole (también llamada álgebra booleana) en informática y matemática, es una estructura algebraica que esquematiza las operaciones lógicas Y, O, NO y SI (AND, OR, NOT, IF), así como el conjunto de operaciones unión, intersección y complemento.','fuente: http://es.wikipedia.org/wiki/%C3%81lgebra_de_Boole'],20/20,'Robi Antonio Rondon Peña'):-!.

pr(0004-33,['induccion','matematica'],['En matemáticas, la inducción es un razonamiento que permite demostrar proposiciones que dependen de una variable n que toma una infinidad de valores enteros. En términos simples, la inducción matemática consiste en el siguiente razonamiento:  El número entero a tiene la propiedad P. El hecho de que cualquier número entero n, también tenga la propiedad P, implica que n+1, también la tiene. Entonces todos los números enteros a partir de a, tienen la propiedad P. La demostración está basada en el axioma denominado principio de la inducción matemática.1','fuente: http://es.wikipedia.org/wiki/Inducci%C3%B3n_matem%C3%A1tica'],20/20,'Robi Antonio Rondon Peña'):-!.


