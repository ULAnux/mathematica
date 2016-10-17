
%
pr(0005-1, [lógica, '¿?' , paradoja, 'Bertrand Russell'], ['¿Existe un conjunto de todos los conjuntos que no se contienen a sí mismos?'], 20/20, ['José Manuel Lacruz']).
pr(0005-3, [lógica, cita, 'Antoine De Saint Exupery'], ['La pura lógica es la ruina del espíritu.'], 20/20, ['José Manuel Lacruz']).
pr(0005-4, [lógica, cita, 'Ludwig Wittgenstein'], ['La lógica se cuida a si misma; todo lo que tenemos que hacer es mirar y ver cómo lo hace.'], 20/20, ['José Manuel Lacruz']).

%José Manuel Barrios Lacruz
%C.I.: 22.987.320.
%Nota: Profesor aquí pretendo representar la tabla de la verdad para la %proposición condicional (p -> q), no se si esta es la mejor manera de %representarlo o existe otra mejor forma, aceptaria de buena manera su opinión. %Aun sigo aprendiendo la sintaxis para manejar prolog, de todas maneras ahí va %mi aporte. También está la tabla de la verdad para la contrapositiva de la %proposición condicional.

pr(0005-5, ['Proposición Condicional', =], [' p :- q '], 20/20, ['José Manuel Barrios Lacruz']).
pr(0005-6, ['Proposición Condicional', p = verdad, q = verdad, =], [verdad], 20/20, ['José Manuel Barrios Lacruz']).
pr(0005-7, ['Proposición Condicional', p = verdad, q = falso, =], [falso], 20/20, ['José Manuel Barrios Lacruz']).
pr(0005-8, ['Proposición Condicional', p = falso, q = verdad, =], [verdad], 20/20, ['José Manuel Barrios Lacruz']).
pr(0005-9, ['Proposición Condicional', p = falso, q = falso, =], [verdad], 20/20, ['José Manuel Barrios Lacruz']).
pr(0005-10, ['Contrapositiva de la Proposición Condicional'], [' ¬p :- ¬q '], 20/20, ['José Manuel Barrios Lacruz']).
pr(0005-11, ['Contrapositiva de la Proposición Condicional', p = verdad, q = falso, =], [falso], 20/20, ['José Manuel Barrios Lacruz']).
pr(0005-12, ['Contrapositiva de la Proposición Condicional', p = falso, q = verdad, =], [verdad], 20/20, ['José Manuel Barrios Lacruz']).
pr(0005-13, ['Contrapositiva de la Proposición Condicional', p = falso, q = falso, =], [verdad], 20/20, ['José Manuel Barrios Lacruz']).
% Jose Manuel 

pr(0005-11, [lógica, definición, 'Aristóteles'], ['Herramienta necesaria para adentrarse en el mundo de la filosofía y la ciencia.'], 20/20, ['José Manuel Lacruz']).

pr(0005-12, [lógica, padre, fundador], ['Aristóteles'], 20/20, ['José Manuel Lacruz']).

pr(0005-13, [lógica, definición, general], ['Estudia las leyes para que un pensamiento sea correcto.'], 20/20, ['José Manuel Lacruz']).

pr(0005-14, [cita, 'Aristóteles'], ['Lo que tenemos que aprender lo aprendemos haciéndolo'], 20/20, ['Jose Manuel Lacruz']).

% comenta 000: corregida "la"
pr(0005-16, [lógica, cita, 'Roberto Sapriza'], ['El matrimonio es una consecuencia lógica de un gran amor.'], 20/20, ['José Manuel Lacruz']).

% Nuevas pr
% TEMA: COMBINATORIA


pr(0005-17, ['Factorial', 'Definición', 'Matemáticas Discretas'], ['El factorial de un entero positivo n, el factorial de n, se define en principio como el producto de todos los números enteros positivos desde 1 (es decir, los números naturales) hasta n.'], 20/20, ['José Manuel Lacruz']).

pr(0005-18, ['Factorial', 'n!', 'Expresion'], ['n! = n(n-1)(n-2)(n-3)...3*2*1'], 20/20, ['José Manuel Lacruz']).
pr(0005-17, ['Combinatoria', 'Definición', 'Matemáticas Discretas'], ['Es el estudio de las diferentes formas en que se pueden agrupar u ordenar los elementos de un conjunto.'], 20/20, ['José Manuel Lacruz']).

pr(0005-19, ['Principio de la multiplicación', 'Combinatoria', 'Matemáticas  Discretas'], ['Si una actividad se puede construir en t pasos sucesivos y el paso 1 se puede hacer de n1 maneras, el paso 2 se puede realizar de n2 maneras, . . . , y el paso t de nt maneras, entonces el número de actividades posibles diferentes es n1 * n2 · · · nt..'], 20/20, ['José Manuel Lacruz']).

pr(0005-20, ['Principio de la multiplicación', 'Ejemplo', '¿Cuántas cadenas de longitud 4 se pueden formar usando las letras ABCDE si nose aceptan repeticiones?'], ['Se usa el principio de la multiplicación. Una cadena de longitud 4 se construye en cuatro pasos sucesivos: se elige la primera letra; se elige la segunda; se elige la tercera; y se elige la cuarta letra. La primera letra se puede seleccionar de cinco maneras. Una vez elegida la primera letra, la segunda se puede elegir de cuatromaneras. Cuando se elige la segunda letra, la tercera se puede elegir de tres ma- neras. Una vez seleccionada la tercera letra, la cuarta se puede seleccionar de dos maneras. Por el principio de la multiplicación, existen: 5 · 4 · 3 · 2 = 120.'], 20/20, ['José Manuel Lacruz']).


pr(0005-21, ['Permutacion', 'Definición', 'Combinatoria'], ['Una permutación de n elementos diferentes x1, . . . , xn es un ordenamiento de los n elementos x1, . . . , xn.'], 20/20, ['José Manuel Lacruz']).

pr(0005-22, ['Combinación', 'Definición', 'Combinatoria'], ['Dado un conjunto X = {x1, . . . , xn} que contiene n elementos (diferentes) Una combinación r de X es una selección no ordenada de r elementos de X (es decir, un subconjunto de X de r elementos).'], 20/20, ['José Manuel Lacruz']).

pr(0005-23, ['Combinaciones sin repetición', 'Definición', 'Combinatoria'], ['Son combinaciones sin repetición de m elementos tomados de n en n (n menor igual que m) son los distintos grupos que se pueden formar con los m elementos disponibles, de modo que en cada grupo haya n elementos distintos. En este caso para que dos grupos sean distintos, han de tener algún elemento diferente; no basta con que tengan distinto orden de colocación.'], 20/20, ['José Manuel Lacruz']).

%TEMA: RECURSIVIDAD 

pr(0005-24, ['Recursividad', 'Definición', 'Matemáticas Discretas'], ['Es la forma en la cual se especifica un proceso basado en su propia definición.'], 20/20, ['José Manuel Lacruz']).

pr(0005-25, ['ALgoritmo Recursivo', 'Definición', 'Recursividad'], ['Un algoritmo recursivo es un algoritmo que expresa la solución de un problema en términos de una llamada a sí mismo. La llamada a sí mismo se conoce como llamada recursiva o recurrente.'], 20/20, ['José Manuel Lacruz']).

pr(0005-26, ['Relación de recurrencia', 'Definición', 'Recursividad'], ['Una relación de recurrencia para la sucesión a0, a1, . . . es una ecuación que relaciona Ancon ciertos predecesores A0, A1, . . . , An−1'], 20/20, ['José Manuel Lacruz']).




