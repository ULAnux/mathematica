%Alfredo Quintero
%CI 20851050
%Matematicas Discretas B-2015


/****************
Las siguientes PR hablan sobre el tema de recurrencia, son extraidas del capitulo 6 del libro de Fernandez Gallardo, se trato de llevar a PR la mayor cantidad de informacion extraible del capitulo para que sirva como base de datos para el juego.
Ademas se anexaron algunos programas recursivos que sirven para calcular la sucesion de fibonacci, restar dos numeros, multiplicar, entre otros. Se realizaron sus respectivas prs para cada codigo para que sirvan para el juego. Y se agrego informacion sobre el tema de grupos y ejemplos sobre el tema de combinatoria. En total se realizaron 70prs.
*************/

%Ecuaciones de recurrencia
pr(0050-1,['Qué', es, una, ecuación, de, recurrencia],['Es una técnica usada para dilucidar o resolver una sucesión de casos, busca averiguar la estructura común y la conexión de cada caso con el anterior. Si se puede reducir cada caso al anterior (con un argumento general), al final solo quedara un primer caso por resolver, del que se deducirán todos. El proceso por el que reducimos un caso al anterior dará como fruto una ecuación general que liga los respectivos resultados. Estas son las ecuaciones de (o en) recurrencias, o simplemente recurrencias.'],20/20,['Fernandez Gallardo']).

pr(0050-2,['Algunas', maneras, para, resolver, una, ecuación, de, recurrencia, son],['1. En función del caso anterior, 2. En función de los dos casos anteriores, 3. En función de todos los casos anteriores'],20/20,['Fernandez Gallardo']).

pr(0050-3,['Cuáles', son, las, ecuaciones, de, recurrencia, 'más', sencillas],['son aquéllas en las que el valor de un cierto término de la sucesión depende únicamente del valor del término anterior.'],20/20,['Fernandez Gallardo']).

pr(0050-4,['Procedimiento', general, para, calcular, la, 'ecuación', de, recurrencia, en, 'función', del, caso, anterior],['1. empezamos analizando el primer caso, digamos el valor de a1; 
2. luego buscamos argumentos que nos permitan establecer el valor de cada an en términos 
del correspondiente an-1; 
3. con esto ya tenemos resuelto el problema, pues de a1 y la regla de recurrencia obtenemos 
el valor de a2 , luego este nos permite calcular a3, etc.; 
4. pero, cuando sea posible, iremos más allá en el análisis y resolveremos la recurrencia. 
Esto es, obtendremos una fórmula explícita an = f(n) para cada n ≥ 1.'],20/20,['Fernandez Gallardo']).

pr(0050-5,['Es', suficiente, conocer, el, valor, del, 'término', anterior, para, calcular, una, 'ecuación', de, recurrencia],['En algunos casos si, mas no en todos.'],20/20,['Fernandez Gallardo']).

pr(0050-6,['El', comportamiento, 'asintótico', de, la, sucesión, depende, de, los, valores, iniciales],['El comportamiento asintótico de la sucesión no depende de los valores iniciales, sino que viene dictado por la ecuación.'],20/20,['Fernandez Gallardo']).

pr(0050-7,['Quién', fue, 'Fibonacci'],['Leonardo de Pisa, también conocido como Fibonacci (1170 – 1250) es un famoso matemático italiano famoso por difundir en Europa el sistema de numeración actualmente utilizado, esto es un sistema de numeración posicional en base decimal y un dígito de valor nulo (cero), y por idear la sucesión de Fibonacci.']).

pr(0050-8,['Qué', es, un, 'árbol', binario, con, 'raíz'],['En un árbol la raíz es el vértice que situamos más arriba, y el que sea binario quiere decir que cada vértice puede tener hasta dos descendientes hacia abajo.'],20/20,['Fernandez Gallardo']).

pr(0050-9,['Es', necesario, siempre, conocer, el, valor, de, 'algún', termino, anterior, para, calcular, la, 'ecuación', de, recurrencia],['No, a veces la recurrencia es caprichosa, y exige buscar el término que esté un cierto número de posiciones antes, o todas las de un cierto bloque anterior de la sucesión.'],20/20,['Fernandez Gallardo']).

pr(0050-10,['Quién', fue, 'Leibniz'],['Gottfried Leibniz (1646-1716), fue matemático y filósofo alemán considerado, junto con Newton, 
el inventor del Cálculo. Leibniz inventó notaciones que han llegado a nuestros días, como dx,  y reglas(que hoy llevan su nombre) como la de diferenciación de productos.'],20/20,['Fernandez Gallardo']).

pr(0050-11,['Algunas', familias, de, 'números', que, dependen, de, dos, 'parámetros:'],['coeficientes binó-micos, números de Stirling de primera y segunda especie, número de particiones de un entero en un cierto número de partes, etc.'],20/20,['Fernandez Gallardo']).

pr(0050-12,['Qué', es, un, sistema, de, ecuaciones, de, recurrencia],['A veces, asociado a un cierto parámetro, digamos n, tenemos dos (o más) sucesiones de números. Calcular un término de una de estas sucesiones puede involucrar, tanto a términos 
de su propia sucesión, como a términos de la otra (u otras). En estos casos, tendremos un sistema de ecuaciones de recurrencia.'],20/20,['Fernandez Gallardo']).

pr(0050-13,['A', 'qué', nos, lleva, el, 'análisis', de, cómo, evoluciona, una, cierta, cantidad, en, el, tiempo],['Es frecuente que el análisis de cómo evoluciona una cierta cantidad en el tiempo nos permita especificar la tasa de variación por unidad de tiempo. Esta información da lugar, de manera natural, a una ecuación de recurrencia.'],20/20,['Fernandez Gallardo']).




/*Ecuaciones linea les homogeneas y con coeficientes constantes*/

pr(0050-14,['Cómo', son, las, ecuaciones, lineales, 'homogéneas', y, con, coeficientes, constantes],['Son ecuaciones como la siguiente: 
an = B1(an−1) + B2(an−2) + · · · + Bk(an−k ),  para cada n ≥ k, 
donde los B1, B2 , . . . , Bn−k, son ciertos números dados, con Bk diferentes de 0 y k ≥ 1.'],20/20,['Fernandez Gallardo']).

pr(0050-15,['Qué', significa, que, una, ecuación, sea, 'homogénea'],['La homogeneidad quiere decir que no aparecen términos extra que no dependan de los propios aj. Si llegara a aparecer uno la ecuación deja de ser homogénea.'],20/20,['Fernandez Gallardo']).

pr(0050-16,['Cuántas', condiciones, iniciales, se, necesitan, para, que, la, 'sucesión', arranque],['Se necesitaran k condiciones iniciales para que la sucesión “arranque” (por “arrancar” la sucesión entenderemos fijar los valores iniciales para a0, a1, ..., ak-1),  los primeros k términos de la sucesión. A partir de ellos, y aplicando la ecuación:
(an = B1(an−1) + B2(an−2) + · · · + Bk(an−k )) reiteradamente, obtendremos todos los valores de (an).'],20/20,['Fernandez Gallardo']).

pr(0050-17,['Qué', ocurre, si, hago, 'combinación', lineal, de, sucesiones, que, sean, solución, de, una, ecuación],['La combinación lineal de sucesiones que sean solución de una ecuación me genera una sucesión que sigue siendo solución.'],20/20,['Fernandez Gallardo']).

pr(0050-18,['Si', encuentro, dos, soluciones, distintas, linealmente, independientes],['Si encontramos dos soluciones “distintas” (linealmente independientes), cualquier otra solución de la ecuación se puede escribir como combinación lineal de ellas.'],20/20,['Fernandez Gallardo']).

pr(0050-19,['Cómo', son, las, ecuaciones, lineales, no, 'homogéneas', y, con, coeficientes, constantes],['A diferencia de las ecuaciones lineales, homogéneas y con coeficientes constantes, este es un caso más general en el que la ecuación contiene un término extra que depende del índice n: 
an + B1(an−1) + B2(an−2) + · · · + Bk(an−k) = f(n) , donde f(n) es una cierta función no nula.'],20/20,['Fernandez Gallardo']).

pr(0050-20,['Cómo', encontrar, la, expresión, de, la, 'sucesión', de, 'números', (an), para, una, ecuación, de, grado, dos],['Si queremos encontrar la expresión de la sucesión de números (an) que cumplen la ecuación
an + α(an−1) + β(an−2) = f(n) , para cada n ≥ 2, 
junto con las condiciones iniciales a0 = p y a1 = q, seguimos los siguientes pasos
(1) analizamos primero la ecuación homogénea asociada, an + α(an−1) + β(an−2) = 0, 
y determinamos la solución general de esta ecuación, que será de la forma (A(bn) +B(cn)). 
(2) Calculamos una solución particular de la ecuación completa; digamos que es la sucesión (dn). 
(3) Ya tenemos la solución general de la ecuación completa, (A(bn) + B(cn) + dn ). Y ahora (y no antes) imponemos las condiciones iniciales para determinar los números A y B.'],20/20,['Fernandez Gallardo']).

pr(0050-21,['De', 'qué', se, trata, el, 'método', de, los, coeficientes, indeterminados],['Se trata, esencialmente, de buscar soluciones particulares dentro de la misma “familia” de funciones a la que pertenezca f(n). Lo cual nos debería permitir de una manera mas sencilla resolver una ecuación lineal, no homogénea, con coeficientes constantes.'],20/20,['Fernandez Gallardo']).

pr(0050-22,['Qué', significa, que, dos, ecuaciones, 'estén', desacopladas],['Que para resolver una ecuación no necesitamos la información de la otra.'],20/20,['Fernandez Gallardo']).

pr(0050-23,['Nombre', un, 'método', para, resolver, sistemas, de, ecuaciones, de, recurrencia],['Una manera de resolver sistemas de ecuaciones de recurrencia es operando con matrices.'],20/20,['Fernandez Gallardo']).

pr(0050-24,['Qué', es, la, matriz, de, 'transición'],['Es la matriz que define la transición de los estados desde un instante t0 hasta un instante t.'],20/20,['anonimo']).

pr(0050-25,['Qué', es, la, matriz, diagonal],['Una matriz diagonal es una matriz cuadrada en que las entradas son todas nulas salvo en la diaginal principal, y éstas pueden ser nulas o no.'],20/20,['anonimo']).

pr(0050-26,['Qué', son, autovalores, y, autovectores],['Un vector propio o autovector de A es un vector x distinto de cero tal que Ax = λx para algún λ ∈ R. A λ se le llama valor propio o autovalor asociado a A.'],20/20,['anonimo']).

pr(0050-27,['Qué', es, una, matriz, invertible, o, matriz, inversa],['Una matriz cuadrada A de orden n se dice que es invertible, si existe otra matriz cuadrada de orden n, llamada matriz inversa de A y representada como A^{-1}, tal que:  A * A^{-1} = A^{-1} * A = I, donde I es la matriz identidad de orden n y el producto utilizado es el producto de matrices usual.'],20/20,['anonimo']).

pr(0050-28,['Qué', es, una, matriz, cuadrada],['Se dice que una matriz es cuadrada cuando el número de filas es igual al número de columnas.'],20/20,['anonimo']).

/********************************
*********************************
	Algunos ejemplos del tema recurrencia, extraidos del libro de Fernandez Gallardo y de internet
*********************************
********************************/

pr(0050-29,['Ejemplo', 'ecuación', en, 'función', del, caso, anterior],['Queremos contar el número de listas de longitud n ≥ 1 formadas con ceros y unos. Llamemos an a la respuesta, para cada n. 
No parece un ejemplo muy apasionante, dado que la regla del producto nos permite obtener 
directamente la respuesta: an = 2^n, para cada n ≥ 1. Abordemos el problema desde otro punto de vista, planteando una recurrencia entre los números an. Para construir una lista de longitud n con ceros y unos tomamos primero una lista de longitud n-1 con las características pedidas (lo podremos hacer de a n-1 formas distintas). Luego, a cada una de ellas, le añadimos un 0 o un 1, para obtener así todas las posibles listas de longitud n. Como este procedimiento asocia a cada posible lista de longitud n-1 dos listas distintas de longitud n, se tendrá que 
(∗)  an = 2an – 1 ; para n ≥ 2. 

Necesitamos, además, un valor inicial, el número de listas de longitud 1: a1 = 2. El problema queda así resuelto en el siguiente sentido: el conocimiento de a1 y la relación (∗) nos permiten calcular a2 ; con a2 , aplicando de nuevo (∗), evaluamos a3 , etc. Pero en este caso, además, podemos resolver la recurrencia y obtener una fórmula explícita para los an : basta aplicar reiteradamente la regla para obtener que, para cada n ≥ 1, 
an = 2 an - 1 = 2 (2an - 2 ) = 2 2 an - 2 = 2 3 an - 3 = · · · = 2 n .'],20/20,['Fernandez Gallardo']).

pr(0050-30,['Ejemplo', 'ecuación', en, 'función', de, los, dos, casos, anteriores],['Llamemos an al número de listas de longitud n, formadas con ceros y unos, que no tienen unos consecutivos. 
Nos fijamos, por ejemplo, en la última posición. Caben dos posibilidades, que la lista acabe 
en 0 ó en 1. Las que acaban en 0 se construyen dando una de longitud n - 1 que cumpla las 
condiciones (ceros y unos, sin unos consecutivos) y añadiéndole un 0 al final. Las acabadas en 1 llevan, necesariamente, un 0 en la penúltima posición; así que habrá tantas como listas de longitud n − 2 que cumplan las condiciones.
Por tanto, la regla de recurrencia será, 
(∗) an = an-1  + an-2 ; para cada n ≥ 3.
Observemos que los valores iniciales, que permiten “arrancar” a la sucesión, son aquí a1=2 y a2=3.'],20/20,['Fernandez Gallardo']).

pr(0050-31,['Ejemplo', 'Sucesión', de, Fibonacci],['Designemos por Fn el número de pares de conejos al final del mes n. Partimos de un par de conejos que nacen en el primer mes; esto es, F1 = 1. Al cabo de un mes seguiremos teniendo 
una pareja de conejos, todavía no adultos: F2 = 1. En el tercer mes ya tenemos una pareja de adultos, que da lugar a una pareja de recién nacidos: F3 = 2. En el cuarto mes seguiremos teniendo una pareja de adultos, que tendrá descendencia. Y la pareja nacida en el mes anterior tendrá ahora un mes. En total, habrá tres parejas de conejos: F4 = 3. 
Y así, sucesivamente.
El número de parejas en el mes n es la suma del número de parejas en el mes n-1 más las parejas que nacen en el propio mes n.
De éstas hay tantas como parejas adultas hubiera en el mes n. Y a su vez, tantas como parejas 
en el mes n−2 (pues se tardan dos meses en ser adulto). En total, para cada n ≥ 3, obtenemos que la sucesión de Fibonacci es               Fn = F(n−1) + F(n−2). Si definimos las condiciones iniciales F0 = 0 y F1 = 1, la ecuación de recurrencia de la suseción de Fibonacci es válida para cada n≥ 2.'],20/20,['Fernandez Gallardo']).





/*******************
Algunas PR que utilizan diferentes codigos recursivos para calcular el resultado, entre ellos esta la susecion de fibonacci, restar numeros, multiplicar numeros, el factorial de un numero, la suma de la serie fibonacci entre otros
********************/

%----FIBINACCI----
%Codigo extraido de internet, autor Joel Fernandez

fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,Y):-N>1,
	N1 is N-1,
	fibonacci(N1,Y1),
	N2 is N-2,
	fibonacci(N2,Y2),
	Y is Y1+Y2.

/* Para probar en el terminal solo la funcion
?- fibonacci(3,Y).
Respuesta: X=2 .

?- fibonacci(10,Y).
Respuesta: X=55 .
*/

pr(0050-32,['La suma fibonnacci de: ',X],[Z], 20/20, ['Alfredo Quintero']):- fibonacci(X,Z).


/*Para probar en el terminal la PR:
?- pr(0050-32,['La sucesion fibonnacci de da: ',10],X, Y, ['Alfredo Quintero']).
*/


%----usando recursividad listar, sumar la serie de fibonacci----
%Codigo extraido de internet, autor Joel Fernandez

concatenar([],L,L).
concatenar([A|Ca],L2,[A|Cc]):- concatenar(Ca,L2,Cc).
fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,Y):-N>1,N1 is N-1,fibonacci(N1,Y1),N2 is N-2,fibonacci(N2,Y2),Y is Y1+Y2.
serieFibonacci(0,[0],0).
serieFibonacci(1,[1],1).
serieFibonacci(Nt,L,S):- Nt>1,fibonacci(Nt,P),N1 is Nt-1,serieFibonacci(N1,Ls,Ss),concatenar(Ls,[P],L),S is Ss+P.


/* Para probar en el terminal solo la funcion
?- SerieFibonacci(5,L,S).
L= [1,1,2,3,5],
S=12 .
*/

pr(0050-33,['la lista de valores FIBONACCI de: ',X],L, 20/20, ['Alfredo Quintero']):- serieFibonacci(X,L,S).


/*Para probar en el terminal la PR:
?- pr(0050-33,['La suma fibonnacci, mas la lista de valores de: ',5],L, X, ['Alfredo Quintero']).
*/

%----Resta Recursiva----
%Codigo extraido de internet, autor anonimo

resta(X,0,X).
resta(X,Y,Z) :- X>Y,
		Y>0,
		Ymenos1 is Y-1,
		resta(X,Ymenos1,Z1),
		Z is Z1-1.

pr(0050-34,['La resta de ',X,Y],[es: Z], 20/20, ['Alfredo Quintero']):- resta(X, Y, Z).


/*manera de probar en el terminal la pr 
?- pr(0050-34,['La resta de ',103,100],Z, P, ['Alfredo Quintero']).
Z = [es:3] .
*/

%----Multiplicacion recursiva----
%Codigo extraido de internet, autor anonimo

producto(0,X,0).
producto(X,Y,Z) :- X>0, 
		   Xmenos1 is X-1, 
		   producto(Xmenos1,Y,Z1), 
		   Z is Y + Z1.
pr(0050-35,['La multiplicacion de ',X,Y],[es: Z], 20/20, ['Alfredo Quintero']):- producto(X, Y, Z).

/*manera de probar en el terminal
?- pr(0050-35,['La multiplicacion de ',5,2],Z, P, ['Alfredo Quintero']).
Z = [es:10] .
*/

%----- Potencia ------
%Codigo extraido de internet, autor anonimo

potencia(A,0,1):- A =\=0.  % validamos que A se a diferente de 0 pues 0^0 es indeterminado.
potencia(X,Y,P ):- Y>0,Y1 is Y-1,     %regla de potencia ejemplo potencia(3,2,X).  Rpta=9
                    potencia(X,Y1,P1 ),
                    P is X*P1.


pr(0050-36,['La potencia de ',X,'elevado a', Y],[es: Z], 20/20, ['Alfredo Quintero']):- potencia(X, Y, Z).

/*manera de probar en el terminal
?- pr(0050-36,['La potencia de ',3,'elevado a', 2],Z, P, ['Alfredo Quintero']).
Z = [es:9] .
*/

%----Calcular el factorial de un numero----
%Codigo extraido de internet, autor anonimo

factorial(N,F) :- N>1, N1 is N-1, factorial(N1,F1), F is N*F1.
factorial(N,F) :- N=1, F is 1.

pr(0050-37,['El fatorial de un numero positivo es: ',X],[Z], 20/20, ['Alfredo Quintero']):- factorial(X,Z).

/*manera de llamar en el terminal
?- pr(0050-37,['El fatorial de un numero positivo es: ',4],X, P, ['Alfredo Quintero']).
X = [24] .
*/


/********************************
*********************************
	Algunas PRs sobre el tema de grupos, sacada de los apuntes vistos en clase y informacion extra que busque para estudiar el tema
*********************************
********************************/

pr(0050-38,['Qué', es, una, estructura, algebraica],['Una estructura algebraica es una n-tupla (a1, a2,..., an) donde a1 es un conjunto dado no vacío y {a2,..., an} un conjunto de operaciones aplicables a los elementos de dicho conjunto.'],20/20,['Alfredo Quintero']).

pr(0050-39,['Qué', es, un, grupo],['Se denomina grupo a todo conjunto no vacío G provisto de una ley interna totalmente definida y asociativa tal que para todo a, b que pertenezcan a G, y x, y existe x, y pertenecientes a G 
a*x=b=y*a.'],20/20,['Alfredo Quintero']).

pr(0050-40,['Cómo', esta, constituido, un, grupo],['El grupo esta constituido por el conjunto G y la ley * definida en ese conjunto, se designan con la notación (G, *).'],20/20,['Alfredo Quintero']).

pr(0050-41,['Qué', propiedades, se, deben, cumplir, para, que, sea, un, grupo],['a) Que este definido el * interno (Producto interno)
b) Se cumpla la propiedad asociativa
c) Que tenga un elemento neutro u, tal que a*u=a
d) Que tenga un elemento simétrico a^, tal que a*a^=u'],20/20,['Alfredo Quintero']).

pr(0050-42,['Qué', es, un, grupo, conmutativo, o, abeliano],['Para que un grupo sea conmutativo o abeliano además de las 4 propiedades ya definidas para grupos, debe cumplirse también la propiedad conmutativa (a*b=b*a).'],20/20,['Alfredo Quintero']).

pr(0050-43,['Qué', es, un, anillo],['Un anillo es un grupo, pero cuenta con dos operaciones. Se puede definir como
Anillo(B, *, **)
Donde B es un conjunto, * es la primera operación y ** la segunda operación.'],20/20,['Alfredo Quintero']).

pr(0050-44,['Qué', es, un, semigrupo],['Un semigrupo es cuando el operador * solamente tiene definidas dos propiedades
a)Producto interno
b)Propiedad Asociativa'],20/20,['Alfredo Quintero']).

pr(0050-45,['Qué', propiedades, se, deben, cumplir, para, que, sea, un, anillo],['Para que sea un anillo se debe cumplir que
(B,*) sea un grupo abeliano
(B, **) sea un semigrupo.'],20/20,['Alfredo Quintero']).

pr(0050-46,['Qué', es, un, anillo, unitario],['Es un operador que además de ser un semigrupo tiene la propiedad de tener un elemento neutro.'],20/20,['Alfredo Quintero']).

pr(0050-47,['Qué', es, un, anillo, conmutativo],['Es un operador que además de ser un semigrupo tiene la propiedad de ser conmutativo.'],20/20,['Alfredo Quintero']).

pr(0050-48,['Qué', es, un, anillo, conmutativo, y, unitario],['Es un operador que además de ser un semigrupo tiene la propiedad de tener un elemento neutro y ser conmutativo. Es decir cumple las propiedades de anillo conmutativo y de anillo unitario.'],20/20,['Alfredo Quintero']).

pr(0050-49,['Qué', es, un, dominio, de, integridad],['Es un anillo de conmutación con unidad en el cual si a, b, c pertenecen a D entonces
c(x)a= c(x)b me genera que a=b.'],20/20,['Alfredo Quintero']).

pr(0050-50,['Qué', es, un, cuerpo],['Es un dominio de integridad tal que todo elemento menos el neutro tiene un inverso multiplicativo. Es decir para todo a perteneciente a K y a diferente del neutro, existe a^ tal que 
a(x)a^=u.'],20/20,['Alfredo Quintero']).


/***************
Algunas PRs sobre Ejercicios de combinatoria resueltos
****************/

pr(0050-51,['Ejemplo', combinatoria, 'un número telefónico consta de siete cifras enteras. Supongamos que la primera cifra debe ser un número entre 2 y 9, ambos inclusive. La segunda y la tercera cifra deben ser números entre 1 y 9, ambos inclusive. Cada una de las restantes cifras es un número entre 0 y 9, ambos inclusive. ¿Cuántos números de teléfono distintos pueden formarse con estas condiciones?'],['Para la primera cifra tenemos 8 casos. Para la segunda y tercera juntas son RV9,2
y las restantes serán RV10,4.
 En consecuencia el número de teléfonos es 8.9^2.10^4 = 6480000 '],20/20,['José Manuel Ramos González']).

pr(0050-52,['Ejemplo', combinatoria, 'Una empresa produce cerraduras de combinación. Cada combinación consta de tres números enteros del 0 al 99, ambos inclusive. Por el proceso de construcción de las cerraduras cada número no puede aparecer más de una sola vez en la combinación de la cerradura. ¿Cuántas cerraduras diferentes pueden construirse?'],['Una posible combinación sería 1, 23, 87 que sería distinta de 23, 1, 87, por lo que importa el orden. Por otra parte nos dicen que cada número no puede aparecer más de una sola vez, por lo que no hay repetición.
Se trata de V100, 3 = 100.99.98= 970200 '],20/20,['José Manuel Ramos González']).

pr(0050-53,['Ejemplo', combinatoria, 'El consejo directivo de una empresa informática tiene 10 miembros. Se ha programado una próxima reunión de accionistas para aprobar una nueva lista de ejecutivos (elegidos entre los 10 miembros del consejo). ¿Cuántas listas diferentes, formadas por un presidente, un vicepresidente, un secretario y un tesorero, pueden presentar el consejo a los accionistas para su aprobación?Si tres miembros del consejo son ingenieros en informática ¿cuántas de las anteriores listas tienen un ingeniero propuesto para la presidencia?'],['Llamemos a los miembros 1,2,3,..., 10, Una lista sería 1,2,3,4 otra sería 4,5,3,1 donde el orden importa ya que el primero sería el presidente, el segundo el vicepresidente, el tercero el secretario y el cuarto el tesorero, es decir que la lista 1,2,3,4 no sería la misma que la 4,3,2,1 ya que el primer caso el presidente sería 1 y en el segundo sería 4. Obviamente no hay repetición. Así pues el número de listas es V10,4= 10000. 
Si tres miembros del consejo son ingenieros. ¿En Cuántas listas hay un ingeniero propuesto para la presidencia?
Fijamos el presidente (3 casos) y variamos a los restantes. Tendríamos entonces
3.V9,3 = 3.9.8.7 = 1512'],20/20,['José Manuel Ramos González']).

pr(0050-54,['Ejemplo', combinatoria, 'El consejo directivo de una empresa informática tiene 10 miembros. Se ha programado una próxima reunión de accionistas para aprobar una nueva lista de ejecutivos (elegidos entre los 10 miembros del consejo). ¿Cuántas listas diferentes, formadas por un presidente, un vicepresidente, un secretario y un tesorero, pueden presentar el consejo a los accionistas para su aprobación?Si tres miembros del consejo son ingenieros en informática ¿cuántas de las anteriores listas tienen  exactamente un ingeniero en la lista? '],['Llamemos a los miembros 1,2,3,..., 10, Una lista sería 1,2,3,4 otra sería 4,5,3,1 donde el orden importa ya que el primero sería el presidente, el segundo el vicepresidente, el tercero el secretario y el cuarto el tesorero, es decir que la lista 1,2,3,4 no sería la misma que la 4,3,2,1 ya que el primer caso el presidente sería 1 y en el segundo sería 4. Obviamente no hay repetición. Así pues el número de listas es V10,4= 10000. 
En cuantas listas hay exactamente un ingeniero.
Tenemos 3 ingenieros para 4 posiciones y los 7 miembros restantes los variamos
de 3 en 3
4.3.V7,3= 4.3.7.6.5= 2520'],20/20,['Alfredo Quintero']).

pr(0050-55,['Ejemplo', combinatoria, 'Con las cifras 1, 2, 3, 4, 5 y 7 se forman números de cinco cifras que no tengan ninguna repetida. ¿Cuántos números se pueden formar?'],['Importa el orden y no hay repetición V6,5 = 6.5.4.3.2 = 720'],20/20,['José Manuel Ramos González']).

pr(0050-56,['Ejemplo', combinatoria, 'Con las cifras 1, 2, 3, 4, 5 y 7 se forman números de cinco cifras que no tengan ninguna repetida.  ¿Cuántos de ellos son múltiplos de 4 y cuántos son múltiplos de 2?'],['Son múltiplos de 4 los que acaban en 12, 24, 32, 44, 52, 72. El caso 44 no nos vale por haber repetición. 
Acaban en 12 V4,3 = 4.3.2. = 24. Por tanto los múltiplos de 4 son 5.24=120.
Como hay 720 casos, acaban en una cifra concreta de las 6, 720/6 = 120 y como para ser pares tienen que acabar en 2 o 4, el número de pares que hay es 240.'],20/20,['José Manuel Ramos González']).

pr(0050-57,['Ejemplo', combinatoria, 'Un profesor del Departamento de Computación tiene siete libros de programación diferentes en una estantería. Tres de los libros son de FORTRAN y los otros cuatro de PASCAL. ¿De cuántas formas puede ordenar el profesor estos libros si  no hay restricciones?'],['Si constituyen siete libros diferentes, el resultado es P7 = 7!= 5040'],20/20,['Alfredo Quintero']).

pr(0050-58,['Ejemplo', combinatoria, 'Un profesor del Departamento de Computación tiene siete libros de programación diferentes en una estantería. Tres de los libros son de FORTRAN y los otros cuatro de PASCAL. ¿De cuántas formas puede ordenar el profesor estos libros si todos los libros de FORTRAN deben estar juntos?'],['Los lenguajes deben alternar, es decir P1F1P3F2P2F3P4 y siempre deben estar colocados así variando solamente los subíndices. Por cada cuaterna de los de Pascal tengo P3 = 3! ternas de fortran. Por tanto la solución es P4.P3 = 4!.3!= 144'],20/20,['José Manuel Ramos González']).

pr(0050-59,['Ejemplo', combinatoria, 'Un profesor del Departamento de Computación tiene siete libros de programación diferentes en una estantería. Tres de los libros son de FORTRAN y los otros cuatro de PASCAL. ¿De cuántas formas puede ordenar el profesor estos libros si todos los libros de FORTRAN deben estar juntos?'],['Si los libros de Fortran deben estar juntos, puedo considerar un bloque a los tres
permutados entre sí, es decir, por ejemplo: P1(FFF)P2P3P4
El número de casos que tendríamos en esa situación sería P5 = 5!, pero a su vez los elementos de FFF permutan entre sí P3 veces, por lo que el resultado pedido será:
P5.P3 = 5!.3!= 720'],20/20,['José Manuel Ramos González']).

pr(0050-60,['Ejemplo', combinatoria, 'Un profesor del Departamento de Computación tiene siete libros de programación diferentes en una estantería. Tres de los libros son de FORTRAN y los otros cuatro de PASCAL. ¿De cuántas formas puede ordenar el profesor estos libros si  todos los libros de FORTRAN deben estar juntos y los libros de PASCAL también?'],['Si los de Fortran deben estar juntos y los de Pascal también tenemos los dos casos FFFPPPP o PPPPFFF, es decir P2, pero a su vez el bloque FFF presenta P3 casos y el bloque PPPP presenta P4 casos. El resultado final sería:
P2.P3.P4 = 2!.3!.4!= 288'],20/20,['José Manuel Ramos González']).

pr(0050-61,['Ejemplo', combinatoria, 'Una mano de bridge consta de 13 cartas del conjunto de 52 de la baraja francesa. ¿Cuántas manos de bridge son posibles?'],['El número posibles de manos es obviamente C52,13 pues el orden en que estén dadas las cartas no influye en la mano y no puede haber repetición por no haber cartas repetidas.'],20/20,['José Manuel Ramos González']).

pr(0050-62,['Ejemplo', combinatoria, 'Una mano de bridge consta de 13 cartas del conjunto de 52 de la baraja francesa. ¿De cuántas formas se le puede dar a una persona 6 picas y 5 corazones?'],['En una mano hay C13,6 de dar 6 picas, pues tengo 13 picas para dar 6. Analogamente para dar 5 corazones serían C13,5. Por último me quedan todavía dos cartas por dar para completar la mano, de donde puedo elegir cualquiera que no sea picas ni corazones, es decir 13 tréboles y 13 rombos, es decir C26,2.
Por tanto el resultado final es C13,6.C13,5.C26,2'],20/20,['José Manuel Ramos González']).

pr(0050-63,['Ejemplo', combinatoria, 'Un estudiante debe responder siete de las diez preguntas de un examen. ¿De cuántas formas puede hacer su elección si no hay restricciones'],['Si las preguntas las numeramos del 1 al 10, una posible respuesta sería 9834567, que es la misma aunque alteremos el orden y no hay posible repetición. Se trata de combinaciones de 10 tomadas 7 a 7, es decir C10,7'],20/20,['José Manuel Ramos González']).

pr(0050-64,['Ejemplo', combinatoria, 'En un lote de 100 ordenadores se sabe que 10 de ellos contienen circuitos integrados defectuosos. Se selecciona una muestra de 7 ordenadores de forma aleatoria para realizar un chequeo. ¿Cuántas muestras contienen tres circuitos defectuosos?'],['De los 7, tres han debido ser elegidos de los 10 defectuosos, es decir C10,3 y el resto serán 4 de los 90 en buen estado. Por tanto la solución es C10,3.C90,4'],20/20,['José Manuel Ramos González']).

pr(0050-65,['Ejemplo', combinatoria, 'En un lote de 100 ordenadores se sabe que 10 de ellos contienen circuitos integrados defectuosos. Se selecciona una muestra de 7 ordenadores de forma aleatoria para realizar un chequeo. ¿Cuántas muestras contienen al menos un circuito defectuoso?'],['Al menos un circuito defectuoso, serían todos menos los que no tuvieran ningún circuito defectuoso, esto es:
C100,7–C90,7'],20/20,['José Manuel Ramos González']).

pr(0050-66,['Ejemplo', combinatoria, ' Si una partida de bridge es una partición ordenada de 52 cartas en cuatro grupos de 13 cartas cada uno. ¿Cuántas partidas distintas de bridge se pueden jugar con una baraja?'],['Al primer jugador podemos darle C52,13 manos, al segundo C39,13, al tercero C26,13 y al último 1.
La soluciónfinal seria C52,13.C39,13.C26,13 '],20/20,['José Manuel Ramos González']).

pr(0050-67,['Ejemplo', combinatoria, '¿De cuántas maneras se pueden distribuir 12 libros distintos entre cuatro niños de modo que cada niño reciba tres libros?'],['El primer niño puede recibir C12,3, el segundo C9,3, el tercero C6,3 y el último C3,3.
Por tanto la solución es C12,3,.C9,3.C6,3.C3,3'],20/20,['José Manuel Ramos González']).

pr(0050-68,['Ejemplo', combinatoria, '¿Cuántos números de 5 cifras diferentes se puede formar con los dígitos: 1, 2, 3, 4,5?'],['P5=5!, por lo tanto el resultado es 120'],20/20,['Anonimo']).

pr(0050-69,['Ejemplo', combinatoria, '¿De cuántas formas se pueden disponer tres letras del alfabeto inglés? '],['El alfabeto inglés consta de 26 letras. Por lo tanto, se pueden distribuir 3 letras de
P(26,3), esto es 26.25.24 = 15600maneras.'],20/20,['Anonimo']).

pr(0050-70,['Ejemplo', combinatoria, 'Hay 10 dígitos decimales. ¿Cuántos conjuntos se pueden formar que contengan exactamente 3 de esos dígitos?'],['C10,3=120'],20/20,['Anonimo']).




