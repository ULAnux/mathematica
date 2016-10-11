%Michael Jean Claude Eyzell Vivas, 0017
pr(0017-0, ['Pregunta'],['Razonamiento, Resolucion, Respuesta'],20/20,['Michael Eyzell']).

pr(0017-1, [ 'Coeficiente Binomial, Combinatoria' ],[ _,_,'n!/(m!*(n-m)!) '],20/20,['Michael Eyzell']).

pr(0017-1, ['Coeficiente Binomial, Combinatoria', N, M],[_,_,Resp],20/20,['Michael Eyzell']):- comb(N,M,Resp).

pr(0017-2, ['Permutación '],[_,_,'n!/(n-m)!'],20/20,['Michael Eyzell']).

pr(0017-2, ['Permutación ', N, M],[_,_,Resp],20/20,['Michael Eyzell']):- perm(N,M,Resp).

%modificada 28/01/15
pr(0017-3, [ 'En el alfabeto Morse, usando en telegrafía, se emplean solamente dos signos: el punto y la raya. ¿Cuántas palabras distintas pueden formarse compuestas de uno, dos, tres, cuatro o cinco signos? Generalice' ],[ 'Razonamiento: Puesto que pueden formarse 2^k palabras de longitud k, el número de palabras de longitud comprendida entre 1 y n será la sumatoria de 2^n con  n = 1 hasta k que es igual a (2^(n+1)-2), Resolución: n=1, 2^(1+1)-2 ;n=2, 2^(2+1)-2; n=3, 2^(3+1)-2; n=4, 2^(4+1)-2;n=5, 2^(5+1)-2; Caso general 2^(n+1)-2 ,2^(1+1)-2; 2^(2+1)-2; 2^(3+1)-2; 2^(4+1)-2; 2^(5+1)-2;2^(n+1)-2,Resultado 2; 6; 16; 30; 62; 2^(n+1)-2' ],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell'] ).

% Agregada 30/01/15 para caso con variable N (Numero de signos) de
% entrada
pr(0017-3, [ 'En el alfabeto Morse, usando en telegrafía, se emplean solamente dos signos: el punto y la raya. ¿Cuántas palabras distintas pueden formarse compuestas de n signos', N],[ 'Razonamiento: Puesto que pueden formarse 2^k palabras de longitud k, el número de palabras de longitud comprendida entre 1 y n será la sumatoria de 2^n con  n = 1 hasta k que es igual a (2^(n+1)-2), Resolución: Caso general' ,2^(N+1)-2, 'Resultado ', Out ],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell'] ):- Out is (2^(N+1)-2).


%modificado 28/01/15
pr(0017-4, ['Si n puntos distinto situados en una circunferencia se unen de todas las maneras posibles con rectas, ¿Cuántos puntos de intersección resultan, como máximo?'],['Razonamiento: Para que exista una intersección deben existir al menos 4 puntos, luego al ir agregando más puntos,  el número de intersecciones está dado por la combinación del número de puntos con el mínimo requerido (4) ', 'Resolución: C(n,4)= (n!)/4!(n-4)!','C(n,4)= (n!)/4!(n-4)!'],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell']).


pr(0017-5, ['¿En cuántos puntos se cortan n rectas, k de las cuales son paralelas entre sí?'],['k(n-k)+ C(n-k,2)'],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell']).

%modificado 28/01/15
pr(0017-6, ['¿Cuántos números mayores que 3000 y menores que 4000 pueden formarse con los dígitos 2, 3, 5 y 7?, ¿si cada cifra puede usarse sólo una vez y si cada cifra puede emplearse las veces que desee?'],['Razonamiento: -el primer número X _ _ _, debe cumplir 4<X<3,mientras que los demás, para el caso donde solo se pueden emplear una vez cada número es una Variación y para el caso de emplearse las cifras las veces que desee es una Variación con reemplazo obligando a la primera cifra a ser 3, Resolución: -Caso 1: m=3,n=3  Variación(m,n)= 3*2  ,Caso 2:m=4, n=3 Variación con reemplazo(m,n) 4^3 (3 X X X, donde X puede tomar 4 valores), La Respuesta es 6,64 respectivamente'],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell']).

%modificada 28/01/15
 pr(0017-7, ['Si se forman todos los números que resultan de permutar las cifras de 123579 y se ordenan en forma creciente, ¿qué lugar ocupará el número 537192?'],['Razonamiento: se calculan, las posiciones que ocupan los n números que resultan de la permutaciones antes de 537192 por cifras, X _ _ _ _ _,  X < 5 entonces X se cuentan las permutaciones de los 5 números restantes donde X = 1,2,3; para la siguiente cifra 5 Y _ _ _ _, Y < 3 entonces Y puede tomar las cifras 1,2 y se cuentan las permutaciones de los 4 números restantes con Y = 1,2; para la siguiente cifra 5 3 Z _ _ _, Z < 7 entonces Z puede tomar las cifras 1,2 y se cuentan las permutaciones de los 3 números restantes con Z = 1,2; para la siguiente cifra 5 3 7 W _ _, W < 1 entonces no existe ninguna cifra que cumpla la condición el 1 queda fijo y vemos la siguiente cifra; para las cifras 5 3 7 1 S T, como solo se pueden usar 2 cifras en este punto solo existen 2 permutaciones posibles., Resolución: 3*5! +2*4! +2*3! +2, la respuesta es 422'],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell']).

% ------------------------------------------------------------------------------
% Enviadas 28/01/15
pr(0017-8, ['¿Que son Arreglos?'],['Se llaman arreglos a m objetos tomados de n en n a las sucesiones de n términos diferentes que pueden formarse con los m objetos. Así por ejemplo los arreglos de las letras a, b, c tomados de dos en dos son: ab, ac, ba, bc, ca, cb. Varios términos se han usado como sinónimos de arreglos, entre ellos: variaciones, disposiciones, coordinaciones, etc.'],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell']).

pr(0017-9, ['¿Que son Arreglos con repetición?'],['Se llaman arreglos con repetición de m elementos tomados de n en n a las sucesiones de n términos que pueden formarse con los m elementos, entendiendo que cada uno de ellos puede aparecer repetidos. Así por ejemplo los arreglos con repetición de los elementos a y  b  tomados de dos en dos son los siguientes: aa ab ba bb.'],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell']).

pr(0017-10, ['¿Que son Permutaciones?'],['Los arreglos de n objetos tomados de n en n son llamados permutaciones de los n objetos; el número de permutaciones de n objetos es n!. Así por ejemplo formación sucesiva de las permutaciones de {a}, {a,b} y {a,b,c}: a ; ab, ba ; abc, acb, cab, bac, bca, cba. Así por ejemplo determinemos cuantas palabras diferentes pueden formarse permutando las letras de la palabra MATEMATICA. Tenemos diez letras, que se reparten en tres A, dos M, dos T, una E, una I y una C. por lo tanto la respuesta se obtiene dividiendo 10! Entre 3!*2!*2!*1!*1!*1! Lo cual resulta ser 151200.'],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell']).

%pr(0017-11, ['¿Que son Permutaciones con repetición?'],['Dados los elementos a[1], a[2],,a[r] y números naturales k[1], k[2],,k[r] consideraremos las sucesiones de n = k[1] + k[2] +  + k[r] términos que se puedan formar con los a[i] de modo que a[1] aparezca k[1] veces, a[2] aparezca k[2] veces,  y a[r] aparezca k[r] veces. A estas sucesiones se les llama permutaciones con repetición de los elementos dados (con multiplicidades (k[1],,k[r]). El número de permutaciones con repetición de r elementos con multiplicidades k[1], k[2],k[r] es : n! / (k[1]!*k[2]!**k[r]!) Siendo n = k[1] + k[2]++k[r].'],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell']).

%pr(0017-12, ['¿Que son Combinaciones?'],['Llamaremos combinaciones de m elementos a[1], a[2],, a[m] tomados de n en n a los subconjuntos de n elementos del conjunto {a[1], a[2],,a[m]}. Denotaremos el número de tales combinaciones mediante el símbolo c(m,n). Así por ejemplo, las combinaciones de los cuatro elementos a, b, c, d tomadas de dos en dos son: {a,b},{a,c},{a,d},{b,c},{b,d} y {c,d}. Por lo tanto c(4,2)=6.'],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell']).

pr(0017-13, ['¿Que son Combinaciones con repetición?'],['Las combinaciones con repetición de m elementos tomados de n en n son los grupos de n elementos que pueden formarse con los m dados, sin tornar en cuenta el orden y admitiendo elementos repetidos. Así por ejemplo las combinaciones con repetición de los elementos a,b y c tornados de dos en dos son las siguientes. aa,ab,ac,bb,bc,cc.'],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell']).



%-----------------------------------------------------------------------
%Enviadas 30/01/15

pr(0017-14, ['¿Cuantas banderas con tres franjas horizontales del mismo ancho y distintos colores pueden formarse, si se dispone de tela amarilla, azul, verde, blanca y roja?'],['Razonamiento: Se disponen de 5 colores de telas y solo se pueden usar 3 colores, cada combinación de 3 colores según su orden puede crear 6 banderas, ejemplo bandera amarilla, azul y roja; y bandera roja, azul y amarillo. Notemos que el orden importa, por lo tanto es una permutación de 5 colores en 3  posiciones. Resolución: X Y Z; X representa el primero color, Y representa el segundo color, Z representa el tercer color. Para X se pueden tomar 5 posibilidades de colores, para Y se pueden tomar 5-1=4 colores, y para Z se pueden tomar (5-1)-1=3 colores, por lo tanto las combinaciones serian X*Y*Z, Respuesta: 60'],20/20,['Teoría Combinatoria, José Héber Nieto Said, La Universidad del Zulia, Maracaibo - Venezuela; Michael Eyzell']).


pr(0017-15,['Sucesión de Fibonacci con n términos',N],[Lout],20/20,['Michael Eyzell']):- sucesionFibonacci(N,Lout).

pr(0017-16,['Valor del número de la sucesión de Fibonacci en la posición n ',N],[Out],20/20,['Michael Eyzell']):- fibonacci(N,Out).

pr(0017-17,['El numero X es Primo',X],[Resp],20/20,['Michael Eyzell']):- esPrimo(X), Resp = [X,'Es Primo'].


%--------------------------------------------------------------------
%enviadas 30/01/15 en la tarde.
%Definiciones con respecto a recurrencia.
% Tomado del siguiente PDF http://www.dma.fi.upm.es/docencia/cursosanteriores/04-05/primerciclo/matdiscreta/12M/TeoriaRecurrencia.pdf

%pr(0017-18, ['Relaciones de recurrencia'],['Una relación de recurrencia para una sucesión {a[0], a[1], a[2], a[3]} es una fórmula que expresa cada termino de a[n], a partir de otro cierto n[0] que pertenece a los números naturales, en función de uno o más términos que le preceden. Los valores de los términos necesarios para empezar a calcular se llaman condiciones iniciales. Se dice que una sucesión es una solución de la relación de recurrencia si su término general verifica dicha relación. Ejemplos, particulares de relaciones de recurrencia son las de las forma a[n] = a[n-1] + d(progresión aritmética), a[n] = r*a[n-1] (progresión geométrica). Sus soluciones son, respectivamente, a[n] = a[0] +d*n y a[n] = a[0]r^n.'],20/20,['Carmen Escribano Departamento de Matemática Aplicada Facultad de Informática Universidad Politécnica Campus de Montegancedo Boadilla del Monte 28660 Madrid,Michael Eyzell']).

%pr(0017-19,['Relaciones de recurrencia lineales homogéneas.'],['Si a[n] es de la forma a[n] = c[1]*a[n-1] + c[2]*a[n-2] + . . . + c[m]*a[n-m] para n >= m, se dice que la relación de recurrencia es lineal homogénea de orden m.'],20/20,['Carmen Escribano Departamento de Matemática Aplicada Facultad de Informática Universidad Politécnica Campus de Montegancedo Boadilla del Monte 28660 Madrid, Michael Eyzell']).

%pr(0017-20,['Ecuación característica de la relación de recurrencia.'],[_,_,'Dada una relación de recurrencia lineal homogénea  a[n] = c[1]*a[n-1] + c[2]*a[n-2] llamaremos a la ecuación X^2  c1*X c2 = 0. A sus raíces se les llama raíces características, En forma general sea a[n] = c[1]*a[n-1] + c[2]*a[n-2] + . . . + c[m]*a[n-m] su ecuación característica es X^n - c[1]*X^(n-1) + c[2]*X^(n-2) + . . . + c[m]*X^(n-m) = 0 ,  su solución general está dada por a[n] = C[1]*X[1] + C[2]*X[2] + C[3]*X[3] + . . . + C[n]*X[n] para el caso en donde existen soluciones sin multiplicidad, en donde C[i] son constantes a determinar.'],20/20,['Michael Eyzell']).

% ----------------------------------------------------------------------------------------------------
% Agregado 11/02/15

pr(0017-21, ['Estructura algebraicas, Operación binaria interna'],['Ejemplo (N,+) donde N es el conjunto de los números naturales y + el operador, tenemos: x + y  =  z en donde para todo x, y pertenecientes al conjunto N, el resultado siempre estará contenido en el conjunto de los números naturales N. 1 + 3 = 4. Se dice que una operación es binaria interna si para cualesquiera valores de x,y pertenecientes al conjunto , A el resultado de la operación x * y pertenece al conjunto A. '],20/20,['Michael Eyzell']).

pr(0017-22, ['Estructura algebraicas,Conmutatividad'],['Sea A un conjunto en donde se ha definido una operación binaria interna * el operador tiene la propiedad conmutativa si cumple que a*b = b*a para todo a,b pertenecientes al conjunto A.'],20/20,['Michael Eyzell']).

pr(0017-23, ['Estructura algebraicas, Asociatividad'],['Ejemplo (N, +) donde N es el conjunto de los números naturales se tiene: 1 + (2 + 3) = (1 + 2) + 3 => 1 + 5 = 3 + 3 => 6 = 6. Sea A el conjunto en donde está definida una operación binaria interna *, se dice que el operador * es asociativo si para todo elemento x,y,z pertenecientes al conjunto A,  se cumple que: x *( y * z) = (x * y) * z.'],20/20,['Michael Eyzell']).


pr(0017-24, ['Estructura algebraicas, Elemento neutro o identidad'],['Ejemplo (Z,+) donde Z es el conjunto de los números enteros, se tiene que x +0 = 0 + x = x , Para todo x perteneciente al conjunto Z. Sea A un conjunto donde se ha definido una operación binaria interna *, se llama elemento neutro o identidad al elemento el cual cumple que: x + e = e + x = x; en donde e y x pertenecen al conjunto A y e es único, también si solo se cumple: x + e = x se dice que e es elemento neutro por la derecha y e + x = x es elemento neutro por la izquierda.'],20/20,['Michael Eyzell']).

pr(0017-25, ['Estructura algebraicas,Elemento simétrico'],['Ejemplo (Z,+) donde Z es el conjunto de los números enteros, se tiene que: 5 + 5¯¯ = 0, en donde 0 es el elemento neutro pues cumple con 5 + 0 = 5 y 5¯¯ = (-5) es el simétrico de 5. Sea A un conjunto en donde se ha definido una operación binaria interna * y además posee elemento neutro, se llama elemento simétrico de A si cumple que para un x perteneciente al conjunto A, x + x¯¯ =  ¯¯x + x = e. También si solo se cumple x + x¯ = e se dice que es elemento simétrico por la derecha; y elemento simétrico por la izquierda si se cumple ¯x + x = e. '],20/20,['Michael Eyzell']).

pr(0017-26, ['Estructura algebraicas , Grupoide '],['Es una estructura algebraica que de la forma (A, *), donde A es un conjunto donde se ha definido una operación binaria interna *. Además si cumple con la propiedad conmutativa con respecto a * se dice que es un grupoide conmutativo'],20/20,['Michael Eyzell']).


pr(0017-27, ['Estructura algebraicas ,Monoide'],[_,_,'Es una estructura algebraica de la forma (A,*), donde A es un conjunto donde se ha definido una operación binaria interna y el elemento neutro con respecto al operador *. Es un grupoide con el elemento neutro.  Además si cumple con la propiedad conmutativa con respecto a * se dice que es un monoide conmutativo o abeliano.'],20/20,['Michael Eyzell']).

pr(0017-28, ['Estructura algebraicas, Grupo '],['Es una estructura algebraica de la forma (A,*), donde A es un conjunto donde se ha definido una operación binaria interna, el elemento neutro con respecto al operador * y el elemento simétrico de un elemento con respecto al operador *. También podemos decir que es un monoide con el elemento simétrico. Además si cumple con la propiedad conmutativa con respecto a * se dice que es un grupo abeliano.'],20/20,['Michael Eyzell']).

%pr(0017-29, ['Recurrencia,Ecuación característica de una ecuación de recurrencia lineal homogénea'],['Ejemplo: Sea la ecuación de recurrencia lineal homogénea G[n] - G[n-1]- G[n-2] = 0 con G[0] = 0 y G[1] = 2, sea X^2 - 1*X -2 = 0 su ecuación característica, se obtiene factorizando (X-2)(X+1) donde X= 2 y X = -1 son solución de la ecuación característica, entonces la solución de la recurrencia es G[n] = K1*(2)^n +K2*(-1)^n, haciendo n = 0, 1. Se obtiene el sistema de ecuaciones: K1 + K2 = 0 ; 2*K1 K2 =2 , donde K1 = 2/3 y K2 = -2/3 de donde se tiene que: G[n ] = (2/3)*2^n +(-2/3)*(-1)^n. Sea la ecuación de recurrencia lineal homogénea de la forma A[n] + c1*A[n-1] +c2*A[n-2] = 0, con n >= 0, su ecuación característica es de la forma X^2  +c1*X +c2 = 0, y la solución de recurrencia viene dada por A[n] = K1*x1^n +K2*x2^n en donde x1 y x2 son las soluciones de la ecuación característica y K1 y K2 son constantes a encontrar por medio de los valores iniciales en A[0] y A[1].'],20/20,['Michael Eyzell']).


%pr(0017-30, ['Dada una ecuacion de la forma C1*a[n] + C2 * a[n-1] + C3 * a[n-2] y condiciones iniciales a[0]= A1 y a[1] = A2 su solucion viene dada para el termino n por ',C1,C2,C3,A1,A2,Resp],['Procedemos a encontra su ecuacion caracteriscia, luego resolvemos la ecuacion caracteristica encontrando asi 2 soluciones x1 y x1 y la solucion de la recurrencia viene dada pora[n] = K1*x1^n+K2*x2^n donde K1 y K2 son constantes que se encuentran al resolver el sistema de ecuaciones generado con las condiciones iniciales',Resp],20/20,['Michael Eyzell']):-recurrencia_orden2(C1,C2,C3,A1,A2,Resp).

%-------------------------------------------------------------------
%Agregado 12/02/15
%pr(0017-31, ['¿Que es Método inductivo?'],['Sea P[n] una proposición matemática si se cumple que: P[1]  es verdadera , P[k] verdadera, implica que P[k+1] también lo es, entonces P[n] es verdadera para cualquier n perteneciente a N.'],20/20,['Fco. Javier Cobos Gavala.','Michael Eyzell']).

%pr(0017-32, ['Demostrar por inducción que Sumatoria de 2^i con i = 1 hasta n (Sum(2^i,i=1,n)) es igual a (2^(n+1)-2).	 Sum(2^i,i=1,n)) = (2^(n+1)-2).'],['Por el método inductivo de demostración debemos verificar si se cumple para un caso inicial P[1], definir la hipótesis inductiva P[k] y verificar que se cumple para P[k+1]. Tomando esto en cuenta procedemos a la demostración. P[1] = Sum(2^i,i=1,1)) = (2^(1+1)-2) --> 2^1 = 2^2 -2 -> 2 = 2. De aquí se cumple P[1]. P[k] = Sum(2^i,i=1,k)) = (2^(k+1)-2) --> 2^1 + 2^2 + 2^3 +  + 2^k = 2^(k+1) -2. Tomamos P[k] como nuestra hipótesis inductiva P[k+1] = Sum(2^i,i=1,k+1)) = (2^(k+1+1)-2)- -> 2^1 + 2^2 + 2^3 +  + 2^k + 2^(k+1) = 2^(k+1+1) -2 -> Por nuestra hipótesis inductiva tenemos que 2^1 + 2^2 + 2^3 +  + 2^k = 2^(k+1) -2. Por lo tanto podemos reescribir que [2^1 + 2^2 + 2^3 +  + 2^k ] = 2^(k+1) -2 entonces tenemos 2^(k+1) -2 + 2^(k+1) = 2^(k+1+1) -2 -> simplificando el lado izquierdo tenemos 2*2^(k+1)  2 = 2^(k+1+1)  -2-> 2^(k+1+1) -2=  2^(k+1+1) -2 de donde se verifica para P[k+1] por lo tanto queda demostrado por inducción.'],20/20,['Michael Eyzell']).


%pr(0017-33, ['Demostrar por inducción que n^2 + n es un numero par para todo n>=1'],['Por el método inductivo de demostración debemos verificar si se cumple para un caso inicial P[1], definir la hipótesis inductiva P[k] y verificar que se cumple para P[k+1]. Tomando esto en cuenta procedemos a la demostración. P[1] = 1^2 + 1, 1>=1 -->  2 y 2 es un numero par. De aquí se cumple P[1]. P[k] = k^2 + k, k>=1 --> tomamos P[k] como nuestra hipótesis inductiva. P[k+1] = (k+1)^2 + k+1, k+1>=1, ahora hagamos algunas manipulaciones algebraicas para buscar nuestra hipótesis inductiva en este caso.  Tenemos (k+1)^2 + k+1, k+1>=1 -> k^2 +2k+1 +k+1 , k>=0 -> organizando para buscar usar nuestra hipótesis inductiva nos queda [k^2+k] +2k +2 , k>=0 -> de donde sabemos que [k^2+k] es par, por nuestra hipótesis inductiva  k^2 + k, k>=1 y 2k+2 que se puede escribir como 2*(k+1) es par por ser divisible entre 2 para cualquier valor k>=0.  Por lo tanto se verifica para P[k+1] y queda demostrado por inducción.'],20/20,['Michael Eyzell']).

%--------------------------------------------
%Agregado 15/02/15

%pr(0017-34, ['Puebe que la fórmula 1*2 + 2*3+3*4+...+n*(n+1) = n*(n+1)*(n+2)/3 es valida para n perteneciente a los numeros naturales'],['Por el método inductivo de demostración debemos verificar si se cumple para un caso inicial P[1], definir la hipótesis inductiva P[k] y verificar que se cumple para P[k+1]. Tomando esto en cuenta procedemos a la demostración. P[1] = 1*2 = 1*(1+1)*(1+2)/3 -> 2 = 2 se cumple para nuestro primer caso P[1], P[k]= 1*2+2*3+3*4+...+k*(k+1) = k*(k+1)*(k+2)/3 -> tomamos P[k] como nuestra hipotesis inductiva, P[k+1] = [1*2 + 2*3+3*4+...+k*(k+1)]+(k+1)*(k+2) = (k+1)*(k+2)*(k+3)/3 , por nuestra hipotesis inductiva podemos sustituir del lado izquierdo de nuestra ecuacion, luego hagamos algunas manipulaciones algebraicas en esta ecuacion. -> k*(k+1)*(k+2)/3  = [1*2 + 2*3+3*4+...+k*(k+1)] -> k*(k+1)*(k+2)/3 + (k+1)*(k+2) = (k+1)*(k+2)*(k+3)/3 -> factorizando el lado izquierdo tenemos (k+1)*(k+2)*(k+3)/3 = (k+1)*(k+2)*(k+3)/3. Por lo tanto se verifica para nuestro P[k+1] y queda demostrado por induccion 1*2+2*3+3*4+...+n*(n+1) = n*(n+1)*(n+2)/3 '],20/20,['Michael Eyzell']).


%pr(0017-35, ['Pruebe que para todo número natural n > 1, el ultimo digito del 2^(2^n) +1 es 7'],['Por el método inductivo de demostración debemos verificar si se cumple para un caso inicial P[1], definir la hipótesis inductiva P[k] y verificar que se cumple para P[k+1]. Tomando esto en cuenta procedemos a la demostración. P[1] = 2^(2^2) +1 y el ultimo digito es  7 => 16+1 = 17 y el ultimo digito es 7 y se verifica P[1], P[k] = 2^(2^k) +1 tomamos P[k] como nuestra hipótesis inductiva. P[k+1]  = 2^(2^(k+1)) +1 , notando que 2^(2^(k+1)) +1 =  (2^(2^k) +1)^2 -2*(2*2^(2^k)+1) +2 Podemos concluir con la ayuda de la hipótesis inductiva que el ultimo digito de (2^(2^k) +1)^2 es 9, el ultimo digito de 2*(2*2^(2^k)+1) es 4, luego al restarlos y sumarles 2 es igual a 7 y se demuestra la proposición y se dice que Queda demostrado por inducción para todo número natural n > 1, el ultimo digito del 2^(2^n) +1 es 7.'],20/20,['Michael Eyzell','Inducción matemática,  Eduardo Sáez , Iván Szanto, departamento de matemática  universidad técnica Federico Santa María']).


%pr(0017-36, ['Demuestre que 1^2+2^2+3^2++n^2 = n*(n+1)*(n+2)/6'], ['Por el método inductivo de demostración debemos verificar si se cumple para un caso inicial P[1], definir la hipótesis inductiva P[k] y verificar que se cumple para P[k+1]. Tomando esto en cuenta procedemos a la demostración. P[1] = 1^2 = 1*(1+1)*(1+2)/6 -> 1 = 1 queda verificado P[1]. P[k] = 1^2+2^2+3^2++k^2 = k*(k+1)*(k+2)/6 asumimos P[k] como nuestra hipótesis inductiva P[k+1]  = 1^2+2^2+3^2++k^2+(k+1)^2 = (k+1)*(k+2)*(k+3)/6, realizando algunas manipulaciones algebraicas la ecuación nos queda -> k*(k+1)*(k+2)/6 + (k+1)^2 = (k+1)*(k+2)*(k+3)/6 ->  [ (k+1)*( k^2 +8k +6)  ]/6  =/=  (k+1)*(k+2)*(k+3)/6 entonces no se verifica P[k+1] y queda demostrado que 1^2+2^2+3^2++n^2 = n*(n+1)*(n+2)/6 no se cumple. Por induccion la igualdad 1^2+2^2+3^2++n^2 = n*(n+1)*(n+2)/6 no se cumple para todo n'],20/20,['Michael Eyzell']).

%pr(0017-37, ['Demuestre que 1^2+2^2+3^2++n^2 = n*(n+1)*(2*n+1)/6'],['Por el método inductivo de demostración debemos verificar si se cumple para un caso inicial P[1], definir la hipótesis inductiva P[k] y verificar que se cumple para P[k+1]. Tomando esto en cuenta procedemos a la demostración. P[1] = 1^2 = 1*(1+1)*(2+1)/6 -> 1 = 1 queda verificado P[1]. P[k] = 1^2+2^2+3^2++k^2 = k*(k+1)*(2*k+1)/6 asumimos P[k] como nuestra hipótesis inductiva P[k+1]  = 1^2+2^2+3^2++k^2+(k+1)^2 = (k+1)*(k+2)*(2*(k+1)+1)/6, realizando algunas manipulaciones algebraicas la ecuación nos queda -> k*(k+1)*(2*k+1)/6 + (k+1)^2 = (k+1)*(k+2)*(2*k+3)/6 -> [ (k+1)* ( k*(2*k+1) + 6(k+1) ) ]/6 = (k+1)*(k+2)*(2*k+3)/6 -> (k+1)*(k+2)*(2*k+3)/6  = (k+1)*(k+2)*(2*k+3)/6  y se verifica P[k+1] y por induccion queda demostrado que 1^2+2^2+3^2++n^2 = n*(n+1)*(2*n+1)/6 para todo n pertenecientes a los numeros naturales'],20/20,['Michael Eyzell']).

%pr(0017-38, ['Determine para que valores de los números naturales n es verdadera la desigualdad 2^n > n^2 +4*n + 5.'],['Por el método inductivo de demostración debemos verificar si se cumple para un caso inicial P[1], definir la hipótesis inductiva P[k] y verificar que se cumple para P[k+1]. Tomando esto en cuenta procedemos a la demostración. En este caso debemos darnos cuenta desde cual numero n será nuestro caso inicial ya que al examinar con n = 1, 2, 3, 4, 5, 6 nos damos cuenta que la desigualdad no se cumple, pero si es verdadera para n = 7 por lo que debemos intentar demostrar por el método de inducción incompleta para todos los valores de n>= 7. P[7] o P[inicial] = 2^7 > 7^2 +4*7 + 5 -> 128 > 82 y queda verificado para P[7] P[k] = 2^k > k^2 +4*k + 5. Tomamos P[k] como nuestra hipótesis inductiva. P[k+1] = 2^(k+1) > (k+1)^2 +4*(k+1) + 5 . Si a P[k] lo multiplicamos por 2 tenemos 2*2^(k) = k^2 +4*k + 5 + k^2 +4*k + 5 -> 2^(k+1) >  k^2 +4*k + 5 + k^2 +4*k + 5, ahora en P[k+1] tenemos  2^(k+1) > (k+1)^2 +4*(k+1) + 5 desarrollando -> 2^(k+1) > k^2 +6k + 10 -> reescribiendo tenemos  2^(k+1) >  [ k^2 +4*k + 5 ] +2k+5, de aquí por nuestra hipótesis inductiva sabemos que 2^(k+1) > [k^2 +4*k + 5] + k^2 +4*k + 5, y como k^2 +4*k + 5 > 2k+5 podemos concluir que la desigualdad 2^n > n^2 +4*n + 5 se cumple para n >= 7 y queda demostrado por induccion que la desigualdad 2^n > n^2 +4*n + 5 se cumple para todo numero natural n >= 7'],20/20,['Michael Eyzell']).

% ------------------------------------------------------------------------
% Agregado 16/02/15


%pr(0017-39, ['Demuestra que para cualquier numero natural n, el numero n^3 + (n+1)^3 + (n+2)^3 es divisible por 9.'],['Por el método inductivo de demostración debemos verificar si se cumple para un caso inicial P[1], definir la hipótesis inductiva P[k] y verificar que se cumple para P[k+1]. Tomando esto en cuenta procedemos a la demostración. P[1] = 1^3 + (1+1)^3 + (1+2)^3 = 36, el cual es divisible entre 9, se verifica nuestro primer caso. P[k] = k^3 + (k+1)^3 + (k+2)^3 = 9*p, ahora definimos P[k] como nuestra hipótesis inductiva. P[k+1] = (k+1)^3 + (k+2)^3 + (k+3)^3 , manipulando la ecuación buscamos encontrar la forma de sustituir nuestra hipótesis inductiva en P[k+1] y verificar si se cumple la igualdad. -> k^3 + 3*3*k^2 +  3*3^2*k + 3^3 + (k+1)^3 + (k+2)^3  ->[ k^3 + (k+1)^3 + (k+2)^3]  + 9(k^2 +  3*k + 3 ) -> 9*p + 9(k^2 +  3*k + 3 ). Que es múltiplo de nueve y por lo tanto se verifica P[k+1]  y queda demostrado por inducción que para todo n natural, n^3 + (n+1)^3 + (n+2)^3 es divisible por 9.'],20/20,['Michael Eyzell']).

%pr(0017-40, ['Demostrar 2^(2*n) > n^2 para todo n natural.'],['Por el método inductivo de demostración debemos verificar si se cumple para un caso inicial P[1], definir la hipótesis inductiva P[k] y verificar que se cumple para P[k+1]. Tomando esto en cuenta procedemos a la demostración. P[1] = 2^(2*1) > 1^2 -> 4 > 1 la desigualdad se cumple  P[1]. P[k] = 2^(2*k) > k^2, definimos a P[k] como nuestra hipótesis inductiva. P[k+1] = 2^(2*( k+1)) > (k+1)^2 -> si multiplicamos P[k] por 2^2 tenemos, = (2^2) * 2^(2*k) > (2^2) * k^2 -> 2^(2k+2)  > (2^2) * k^2 -> 2^(2*(k+1))  > 4 * k^2 -> 2^(2*(k+1))  >  k^2 + 3*k^2, ahora manipulamos la desigualdad para intentar hacer una sustitución de nuestra hipótesis inductiva en P[k+1]. -> 2^(2*( k+1)) > k^2 + 2*k+1 , por nuestra hipótesis inductiva sabemos que 2^(2*( k+1)) > k^2 , y como 3*k^2 > 2*k+1 se cumple para k > 1, queda demostrado por inducción que la desigualdad 2^(2*n) > n^2 para todo n natural se cumple.'],20/20,['Michael Eyzell']).



%"Funciones"
%-----------------------------------------------------------
% N numero al cual se aplica el operador factorial, Out salida de
% aplicar el operador factorial a N.
fact(0,1).
fact(1,1).
fact(N,Out):- N>0 , A is N-1, fact(A, O1), Out is N*O1.

% Out es la salida de la permutación de N en M elementos.
perm(N,M,Out):- N>=0, N>=M, fact(N,O1), fact(N-M,O2), Out is O1/O2.

% Out es la salida de la combinación de N en M elementos.
comb(N,M,Out):- N>=0, N>=M, fact(N,O1), fact(M,O2), fact(N-M,O3), Out is O1/(O2*O3).

% N índice de la sucesión de Fibonacci ejm. 1[1],1[2],2[3],3[4],5[5],8[6]
% ; Out Valor del número de la serie de Fibonacci en el índice N
fibonacci(0,0).
fibonacci(1,1).
fibonacci(2,1).
fibonacci(N,Out):-N>2,A is N-1,fibonacci(A,X),B is N-2,fibonacci(B,Y),Out is X+Y.

%Concatena la lista X|L1 con L2, en la lista X|Lout.
concatenar([],L,L).
concatenar([X|L1],L2,[X|Lout]):- concatenar(L1,L2,Lout).

% crea en una lista la sucesión de Fibonacci con N elementos en la lista
% Lout.
sucesionFibonacci(0,[0]).
sucesionFibonacci(1,[1]).
sucesionFibonacci(N,Lout):- N>1,fibonacci(N,Out),A is N-1,sucesionFibonacci(A,Lout1),concatenar(Lout1,[Out],Lout).

exp(0,X,1).
exp(1,X,x).
exp(N,X,Out):-N>1, Out = X^N.

% Crea una lista con la base canónica de Grado N, con la variable X, en
% la variable Y.
basePolinomio(0,X,[1]).
basePolinomio(N,X,Y):- N>0,exp(N,X,Z),K is N-1, basePolinomio(K,X,Out),concatenar(Out,[Z],Y).


%Agregado 30/01/15

% Determinar si el numero X es primo con entrada Y = X-1
primo(X,1).
primo(X,Y):- integer(X),X>0,X>Y,Y>1, not(0 is X mod Y),W is Y-1, primo(X,W).

%Determinar si es X un numero Primo
esPrimo(1).
esPrimo(X):- Y is X-1 , primo(X,Y).



% ----------------------------------------------------------------------------------------------------
% agregado 11/02/15
% Resolver recurrencias lineales homogeneas de segundo orden dando como
% entrada: c1,c2,c3,a[0],a[1],Variable para respuesta numerica, n ,
% Variable de respuesta c1*a[n] + c2*a[n-1] + c3*a[n-2] = 0 c1*x^2 +
% c2*x + c3 = 0 en donde F1 es a[n] donde n = 1 y F2 a[n] donde n vale 2
% y Fn la solucion de la ecuacion evaluada en N y Resp el valor de a[N].
% tambien los valores de K1, X1, K2,X2 de la ecuacion a[n] = K1*X1^n
% +K2*X2^n. de forma expandida con operaciones Con Raices sin
% multiplicidad
%
% %Modificado 12/02/15 para evitar raices repetidas
% Correcion de sintaxis 07/05/15 por Michael Eyzell

recurrencia_orden2(CoefX2,CoefX,CoefInd,F1,F2,Fn,N,Resp):-

	Suma is ((CoefX^2) - 4*CoefX2*CoefInd),
	Raiz1=sqrt(Suma),

	K1 =(-CoefX+Raiz1)/(2*CoefX2),
	K2 =(-CoefX-Raiz1)/(2*CoefX2),
	(K1 =\= K2->

	N1 is 0, N2 is 1,
	K11 = K1^N1,
	K12 = K2^N1,
	K21 = K1^N2,
	K22 = K2^N2,

	H11 = K22*F1,
	H12 = K12*F2,
	H1 = H11-H12,
	H21 = K11*K22,
	H22 = K21*K12,
	H2 = H21-H22,
	G1 = H1/H2,
	J11 = -K21*F1,
	J12 = K11*F2,
	J1 = (J11+J12),
	J21 = K11*K22,
	J22 = K21*K12,
	J2 = (J21-J22),
	G2 = J1/J2,
	Fn is  (G1*K1^N+G2*K2^N),
	Resp =  [G1,K1,G2,K2]).


% Resolver recurrencias lineales homogeneas de segundo orden dando como
% entrada: c1,c2,c3,a[0],a[1],Variable para respuesta algebraica,
% c1*a[n] + c2*a[n-1] + c3*a[n-2] = 0 c1*x^2 + c2*x + c3 = 0 en donde F1
% es a[n] donde n = 1 y F2 es a[n] donde n vale 2 y Fn la solucion de la
% ecuacion. mostrando tambien los valores de K1, X1, K2,X2 de la
% ecuacion a[n] = K1*X1^n +K2*X2^n. de forma algebraica incluyendo
% raices repetidas
%
%Modificado 12/02/15 para incluir raices repetidas
% Correcion de sintaxis 07/05/15 por Michael Eyzell

recurrencia_orden2(CoefX2,CoefX,CoefInd,F1,F2,Fn):-
	Suma is ((CoefX^2) - 4*CoefX2*CoefInd),
	Raiz1=sqrt(Suma),

	K1 =(-CoefX+Raiz1)/(2*CoefX2),
	K2 =(-CoefX-Raiz1)/(2*CoefX2),
	K11 is K1,
	K22 is K2,
	(K11 == K22 -> recurrencia_orden2Multiplicidad(CoefX2,CoefX,CoefInd,F1,F2,Fn);
	H1 = K2*F1-F2,
	H2 = K2-K1,
	G1 = H1/H2,
	J1 = (-K1*F1+F2),
	J2 = (K2-K1),
	G2 = J1/J2,
	Resp =  ['Donde K1, X1, K2, X2 estan dados asi respectivamente',[G1,K1,G2,K2]],
	Fn = [G1*K1^n+G2*K2^n,Resp]).



% Resolver recurrencias lineales homogeneas de segundo orden dando como
% entrada: c1,c2,c3,a[0],a[1],Variable para respuesta numerica, n
% c1*a[n] + c2*a[n-1] + c3*a[n-2] = 0 c1*x^2 + c2*x + c3 = 0 en donde F1
% es a[n] donde n = 1 y F2 a[n] donde n vale 2 y Fn la solucion de la
% ecuacion evaluada en N mostrando, tambien los valores de K1, X1, K2,X2
% de la ecuacion a[n] = K1*X1^n +K2*X2^n. de forma analitica Incluyendo
% raices repetidas
%
%Modificado 12/02/15 para incluir raices repetidas
% Correcion de sintaxis 07/05/15 por Michael Eyzell

%Ejemplo Fibbonaci llamada recurrencia_orden2(1,-1,-1,0,1,F,10), F sub indice 10 = 55
recurrencia_orden2(CoefX2,CoefX,CoefInd,F1,F2,Fn,N):-

	K1 is ((-CoefX+sqrt(((CoefX^2) - 4*CoefX2*CoefInd)))/(2*CoefX2)),
	K2 is ((-CoefX-sqrt(((CoefX^2) - 4*CoefX2*CoefInd)))/(2*CoefX2)),
	(K1 == K2 -> recurrencia_orden2Multiplicidad(CoefX2,CoefX,CoefInd,F1,F2,Fn,N);

	G1 is ((((-CoefX-sqrt(((CoefX^2) - 4*CoefX2*CoefInd)))/(2*CoefX2)))*F1-F2)/((((-CoefX-sqrt(((CoefX^2) - 4*CoefX2*CoefInd)))/(2*CoefX2)))-(((-CoefX+sqrt(((CoefX^2) - 4*CoefX2*CoefInd)))/(2*CoefX2)))),
	J1 is (-(((-CoefX+sqrt(((CoefX^2) - 4*CoefX2*CoefInd)))/(2*CoefX2)))*F1+F2),
	J2 is ((((-CoefX-sqrt(((CoefX^2) - 4*CoefX2*CoefInd)))/(2*CoefX2)))-(((-CoefX+sqrt(((CoefX^2) - 4*CoefX2*CoefInd)))/(2*CoefX2)))),
	G2 is J1/J2,
	Resp =  ['Donde K1, X1, K2, X2 estan dados asi respectivamente y es la forma a[n] = K1*X1^n + K2*X2^n',[G1,K1,G2,K2]],
	Fresul is  (G1*K1^N+G2*K2^N),
	Fn = [Fresul,Resp]).

%
%
%--------------------------------------------------
% Agregado 12/02/15 incluir raices repetidas en las recurrencias
% homogeneas
%
%
%
% Resolver recurrencias lineales homogeneas de segundo orden con
% multiplicidad dando como entrada: c1,c2,c3,a[0],a[1],Variable de
% respuesta numerica, n
% c1*a[n] + c2*a[n-1] + c3*a[n-2] = 0 c1*x^2 + c2*x + c3 = 0 en donde F1
% es a[n] donde n = 1 y F2 a[n] donde n vale 2 y Fn la solucion de la
% ecuacion evaluada en N mostrando, tambien los valores de K1, K2, X1 de
% la ecuacion a[n] = (K1+K2*n)*X1^n de forma analitica


recurrencia_orden2Multiplicidad(CoefX2,CoefX,CoefInd,F1,F2,Fn,N):-

	K1 is ((-CoefX+sqrt(((CoefX^2) - 4*CoefX2*CoefInd)))/(2*CoefX2)),
	K2 is ((-CoefX-sqrt(((CoefX^2) - 4*CoefX2*CoefInd)))/(2*CoefX2)),
	K1 == K2,
	G1 is F1,
	G2 is F2/K1 - F1,
	Resp =  ['Donde X1 tiene multiplicidad 2, K1, K2, X1 estan dados asi respectivamente',[G1,G2,K1]],
	Fresul is  ((G1+G2*N)*K1^N),
	Fn = [Fresul,Resp].


% Resolver recurrencias lineales homogeneas de segundo orden con
% multiplicidad dando como entrada: c1,c2,c3,a[0],a[1],Variable de
% respuesta algebraica.
% c1*a[n] + c2*a[n-1] + c3*a[n-2] = 0 c1*x^2 + c2*x + c3 = 0 en donde F1
% es a[n] donde n = 1 y F2 a[n] donde n vale 2 y Fn la solucion de la
% ecuacion de forma algebraica, tambien los valores de K1, K2, X1 de
% la ecuacion a[n] = (K1+K2*n)*X1^n de forma algebraica


recurrencia_orden2Multiplicidad(CoefX2,CoefX,CoefInd,F1,F2,Fn):-

	K1 = ((-CoefX+sqrt(((CoefX^2) - 4*CoefX2*CoefInd)))/(2*CoefX2)),
	K2 = ((-CoefX-sqrt(((CoefX^2) - 4*CoefX2*CoefInd)))/(2*CoefX2)),
	K11 is K1,
	K22 is K2,
	K11 == K22,

	G1 = F1,
	G2 = F2/K1 - F1,
	Resp =  ['Donde X1 tiene multiplicidad 2, K1, K2, X1 estan dados asi respectivamente',[G1,G2,K1]],
	Fresul = (G1+G2*n)*K1^n,
	Fn = [Fresul,Resp].

% comentarios finales. Agregados el 29/05/2015
% funciones modificadas
% recurrencia_orden2 en varias de sus llamadas según sus parámetros, y
% eliminado el redondeo de resultados (Algunos resultados es útil contar con
% su parte flotante aunque contenga errores)
% test -> recurrencia_orden2(1,-1,-1,0,1,F,10). Ecuacion de Fibonacci en F_10
% = 55
%
% recurrencia_orden2(4,-8,3,0,-2,F,3). Ecuación en diferencia de análisis
% numérico resolviendo a mano se consiguen valores cómodos para trabajar y
% facil para verificar 4x_n+2 − 8x_n+1 + 3x_n = 0 y x_1 = 0 , x_2 = -2
% 

% fin del archivo






