
%   	Ender Peña, C.I 25302230. 
%   	Aquí envío algunas PR para la página.



%       Tema 1: Lógica 

	
        pr(_, ['Que', 'es', 'razonamiento', 'inferencia'], ['Es la aseveración de que una proposición, llamada conclusión, es consecuencia de otras proposiciones dadas, llamadas premisas.'], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática".']). 

	 pr(_, ['Que', 'es', 'cuantificador'], ['En lógica formal, los cuantificadores son expresiones que indican la cantidad de veces que un predicado o propiedad  se satisface dentro de una determinada clase (por ejemplo, pertenencia, equivalencia u orden). '], 20/20, ['Ender Peña', 'Tomado https://es.wikipedia.org/wiki/Cuantificador']). 

 	pr(_, ['cuantificador', 'universal'], ['En lógica, se usa el símbolo ∀, denominado cuantificador universal, antepuesto a una variable para decir que "para todo" elemento de un cierto conjunto se cumple la proposición dada a continuación.'], 20/20, ['Ender Peña', 'Tomado de https://es.wikipedia.org/wiki/Cuantificador_universal']).

        pr(_, ['cuantificador', 'existencial'], ['En el cálculo de predicados de la lógica formal, se usa el símbolo ∃, llamado cuantificador existencial, antepuesto a una variable para decir que "existe" al menos un elemento del conjunto al que hace referencia la variable, que cumple la proposición escrita a continuación.'], 20/20, ['Ender Peña', 'Tomado de https://es.wikipedia.org/wiki/Cuantificador_existencial']).

         pr(_, ['cuantificador', 'existencial', 'única', 'unicidad'], ['El cuantificador existencial con marca de unicidad ∃! se usa para indicar que hay un único elemento de un conjunto A que cumple una determinada propiedad.'], 20/20, ['Ender Peña', 'Tomado de https://es.wikipedia.org/wiki/Cuantificador']).

	pr(_, ['Paradoja de Aquiles y la tortuga'], ['Una lenta tortuga desafió a Aquiles, el atleta más conocido de la Grecia Antigua, a una carrera. La tortuga pidió una pequeña ventaja de 100 m. Se sabía que AquiLes corría 10 veces más rápido que la tortuga; sin embargo, ella argumentaba que nunca lo alcanzaría. En efecto, le decía a Aquiles: Para que tú me alcances, primero tienes que recorrer los 100 m. de ventaja que diste; pero, para ese entonces, yo ya habré recorrido 10 m. Cuando tu recorras esos 10 m., yo ya habré recorrido 1 m. Cuando tu recorras ese metro, yo habré recorrido 1dm. Como tú ves, aunque cada vez tú te acercas más a mi, sin embargo, yo siempre estaré delante de ti. Es decír, tú nunca me alcanzarás.'], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática".']).

	
       
%       Tema 2: Conjuntos

        pr(_, ['Sea "Ø" el conjunto vacío. Determinar la verdad o falsedad de las proposiciones: 1) Ø ϵ  Ø, 2) Ø ⊂  Ø, 3) Ø ϵ {Ø}, 4) {Ø} ⊂  {Ø,{Ø}}'], ['1) Falso, Ø no tiene elementos. 2) Verdadero, Ø es subconjunto de todo conjunto A y, en particular, de A = Ø. 3) Verdadero, {Ø} es un conjunto unitario cuyo único elemento es Ø. 4) Verdadero, Ø es un elemento de {Ø,{Ø}} y, por tanto, {Ø} ⊂ {Ø,{Ø}}.'], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática".']).

	pr(_, ['Determinar por extensión los siguientes conjuntos: A = { x ϵ ℕ | x = n², n primo y n ≤ 11 }, B = { x ϵ ℤ | ∃ n ϵ ℕ | x = 3n+1 }. '], ['A = { 4,9,25,49,121 }, B= { 4,7,10,13,16,... }.'], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática"']). 

        pr(_, ['par', 'ordenado'], ['Se llama par ordenado "a" "b" al conjunto (a,b) = { {a},{a,b} }. Los elementos "a" y "b" se llaman primera y segunda coordenada del par ordenado (a,b), respectivamente.'], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática"']).

        pr(_, ['producto', 'cartesiano', 'conjuntos'], ['El producto cartesiano de los conjuntos A y B es el conjunto A × B = { (a,b) | a ϵ A ^ b ϵ  B }.  '], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática"']).

       pr(_, ['Si A = {a,b} y B = {1,2,3} Determine: 1) A × B y 2) B × A'], ['1) A × B = { (a,1), (a,2), (a,3), (b,1), (b,2), (b,3) }. 2) B  × A = { (1,a), (1,b), (2,a), (2,b), (3,a), (3,b) }. '], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática"']).



%     Tema 3: Estructuras Algebraicas

	 pr(_, ['operación','binaria'], ['Sea A un conjunto no vacío, Una operación binaria en A es una función f : A × A → A'], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática."']).

	  pr(_, ['¿La adición y la sustracción son operaciones binarias tanto ℕ, ℤ, ℚ, ℝ ó ℂ.?'], ['La adición sí, la sustracción es una operación binaria en ℤ, ℚ, ℝ ó ℂ, pero no lo es en ℕ, ya que la diferencia de dos números naturales no siempre es otro número natural, es decír, no siempre se cumple que:  f : ℕ × ℕ → ℕ.'], 20/20, ['Ender Peña']).

	 pr(_, ['La división es una operación binaria en ℤ, ¿verdadero o falso?'], ['Falso. el cociente a/b de dos enteros no siempre es otro entero. Por ejemplo: 2/3 no pertenece a ℤ, pertenece a ℚ.'], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática."']).

	 pr(_, ['¿En qué conjuntos la división es una operación binaria?'], ['En los siguientes conjuntos: ℚ* = ℚ - {0}, ℝ* = ℝ - {0}, ℂ* =  ℂ - {0}. Es decír, la división es una operación binaria en estos conjuntos cuando excluímos el "0", ya que a/b no está definida si b = 0.'], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática."']).

	  pr(_, ['¿La sustracción en ℤ es asociativa?'], ['No. En efecto, tenemos por ejemplo que si: x = 1, y = -2, z = 3. ( x - y ) - z = ( 1- (-2) )-3 = ( 1 + 2 ) - 3 =  3 - 3 = 0. Por otro lado, x - (y - z) = 1 - (-2 - 3) = 1 - (-5) = 1 + 5 = 6.  Vemos que ( x - y ) - z ≠ x - ( y - z) '], 20/20, ['Ender Peña.']).
        
	  pr(_, ['Todo elemento a ϵ ℝ tal que a ≠ 0 es invertible respecto a la multiplicación, ¿cuál es su inverso?.'], ['el inverso de a es 1/a. En efecto: a . (1/a)= 1.'], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática."']).

	  pr(_, ['Los sistemas algebraicos (ℕ,+), (ℤ,+), (ℚ,+), (ℝ,+), (ℂ ,+), ¿qué tipo de estructura tienen?. '], ['Grupos abelianos.'], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática."']).

           
% 	Tema 4: Inducción matemática

	pr(_, ['principio', 'inducción', 'matemática'], ['La inducción matemática es un método de demostración que se utiliza cuando se trata de establecer la veracidad de una lista infinita de proposiciones. El método es bastante natural para usarse en una variedad de situaciones en la ciencia de la computación. Algunas aplicaciones tienen un sabor muy matemático, tal como verificar que todo entero positivo satisface ceirta fórmula. Otra utilización frecuente es la de demostrar que un programa de computación o que un algoritmo con ciclos funciona como se espera."'],  20/20, ['Ender Peña.', 'Tomado de http://mate.cucei.udg.mx/matdis/2ind/2ind4.htm']).

	pr(_, ['axioma', 'inducción', 'Peano'], ['El quinto axioma de Peano o axioma de la inducción nos proporciona un método simple y muy útil para probar proposiciones relacionadas con los números naturales. Establece que: Si un subconjunto M de ℕ es tal que: a) 0 ϵ M. b) k ϵ M → k + 1 ϵ M ∀ k ≥ 0. Entonces M = ℕ.'], 20/20, ['Ender Peña.', 'Tomado de J. Saenz. "Fundamentos de la matemática."]).
	
	pr(_, ['Demuestre por inducción matemática que: Si n es un entero positivo, entonces n(n + 1 ) es divisible por 2.'], ['a) Sea n = 1, entonces: n( n + 1) = 2 ( Verdadero ). b ) Sea n = k, entonces: k( k + 1 ) es divisible por 2 ( Hipótesis de inducción ). c ) Sea n = k + 1, entonces: ( k + 1)( k + 2 ) es divisible por 2 ( Tesis ). d ) Demostración: ( k + 1 )( k + 2 ) = k( k + 1 ) + 2( k + 1 ), k( k + 1) es divisible por 2 ( Por hipótesis de inducción ), y 2(k + 1 ) es divisible por 2 (Entero par). Por lo tanto ( k + 1 )( k + 2 ) es divisible por 2.'], 20/20, ['Ender Peña', 'Tomado de http://www.eneayudas.cl/induccionmatematica/induccionmatematica.htm"']).




%  	Tema 5: Combinatoria

	pr(_, ['Demostración', 'combinatoria','La proposición: Sean n, k ϵ ℕ, tales que 0 ≤ k ≤ n. Entonces C(n,k) = C(n,n-k).  ¿Es verdadera o falsa?'], ['Verdadera. Decir que un conjunto de n elementos se eligen de k es lo mismo que decir que se eligen dejar n-k. Por lo tanto el número de maneras distintas de elegir k elementos de n es lo mismo que el número de maneras de elegir (n-k) elementos de n. Veámoslo con un ejemplo: Imaginemos una clase con n niños. El profesor tiene k dulces idénticos para dar exactamente a k niños. ¿De cuántas formas puede distribuir los dulces?, la respuesta es C(n,k), porque estamos seleccionando un conjunto afortunado de k niños que tendrán su dulce. Pero también es interesante el punto de vista pesimista, hay n-k niños que no tendrán su dulce, y podemos seleccionar ese subconjunto de la clase en C(n,n-k) formas.  Como es claro que los dos problemas de conteo son iguales, se debe cumplir que C(n,k)= C(n,n-k).'], 20/20, ['Ender Peña', 'Tomado de E. Scheinerman. "Matemáticas Discretas".']).

	pr(_, ['¿Cuántos subconjuntos de tamaño k tiene un conjunto de n elementos? '], ['C(n,k). Es decir, otra forma de decir la cantidad de subonjuntos de k elementos que hay en un conjunto de n elementos es la cantidad de "combinaciones" de n cosas tomadas de k en k.'], 20/20, ['Ender Peña.']).
	
	pr(_, ['El número de maneras de seleccionar cuatro letras del alfabeto A = {u,l,m,a,q,s} es: '], ['C(6,4) = (6!)/(4!2!) = 15'], 20/20, ['Ender Peña', 'Tomado de J Rodriguez. "El arte de contar."']).

	r(_, ['¿Cuántos numeros pares existen mayores que 999 y menores que 9999?'], ['Podemos formar 4-permutaciones, observando que en la primera posición podemos colocar cualquiera de los 9 elementos: 1,2,...9; en la segunda 10 posibilidades; 10 posibilidades también para la tercera opción y 5 posibilidades para la cuarta (necesitamos que el último sea múltiplo de 2). Según el Principio de la Multiplicación el número total de posibilidades es: 9 × 10 × 10 × 5 = 4500'], 20/20, ['Ender Peña', 'Tomado de J Rodriguez. "El arte de contar."']).

	pr(_, ['Hallar el valor de la permutación: P(n+1, n-1).'], ['(n+1)n(n-1)...(n+1-(n-1)+1 ) = (n+1)n(n-1)...3 = (n+1n(n-1)...3×(2×1) / (2×1) (multiplicamos por 2×1 arriba y abajo para completar el desarrollo de n! en el numerador) = (n+1)n! / 2'], 20/20, ['Ender Peña.']).

	pr(_, ['Halle el valor de la siguiente combinación: C(n,n-1)'], ['Si consideramos que: C(n,n-1) = C(n,1) y C(n,1) = n, entonces: C(n,n-1) = n.'], 20/20, ['Ender Peña.']).
        
	pr(_, ['¿De cuántas maneras se puede sentar un grupo de 4 mujeres y 4 hombres alrededor de una mesa redonda en forma intercalada?.'], ['3!×4! = 144 maneras.'], 20/20, ['Ender Peña', 'Tomado de J. Saenz. "Fundamentos de la matemática."']).

     




	





 

