pr(0020-1, ['Que es recurrencia'], ['Es la aparicion reiterativa de algo'], 20/20, ['Juancarlos Salcedo basado en http://www.wordreference.com/definicion/recurrencia']).
pr(0020-2, ['Que es una relacion de recurrencia'], ['En matematica, una relacion de recurrencia es una ecuacion que define una secuencia recursiva; cada termino de la secuencia, es definido como una funcion de terminos anteriores.'], 20/20, ['http://es.wikipedia.org/wiki/Relacion_de_recurrencia']).
pr(0020-3, ['Que es una secuencia recursiva'], ['Es una serie de pasos basados en su propia definicion'], 20/20, ['Juancarlos Salcedo basado en: http://es.wikipedia.org/wiki/Recursion']).
pr(0020-4, ['Que es una ecuacion de recurrencia'], ['En matematica es aquella exprecion donde cada termino, se obtiene sumando o haciendo alguna operacion de los anteriores, claro ejemplo de esto es la famosa serie Fibonacci: Sucesion de Fibonacci: ( An ) = ( 1,1, 2,3,5,8,13,...) Cada termino, a partir del tercero, se obtiene sumando los dos anteriores'], 10/20, ['Juancarlos Salcedo modificado de: www.x.edu.uy/inet/Ecuaciones_recurrencia_INET.pdf']).
pr(0020-5, ['Tiene una ecuacion de recurrencia solucion?'], ['Encontrar una solucion a la ecuacion de recurrencia es determinar una expresion del tipo An = f(n) en la que el termino general An dependa solo de la posicion que ocupa, n, y no de los anteriores. Para que la solucion sea unica es necesario conocer algunos terminos de la sucesion, lo que llamaremos condiciones iniciales.'], 20/20, ['www.x.edu.uy/inet/Ecuaciones_recurrencia_INET.pdf']).
pr(0020-6, ['Que es una condicion inicial'], ['Son valores dados en forma explicita para un numero finito de terminos de la ecuacion o sucesion de recurrencia'], 10/20, ['www.dspace.espol.edu.ec/retrieve/.../DMD4_relaciones_de_recuerrencia....']).
pr(0020-7, ['ejemplo de ecuacion de recurrencia?'], ['Llamemos An al numero de regiones del plano que determinan n rectas. Estas rectas deben ser tales que por cualquier punto del plano pasen a lo sumo dos de ellas; y tales que ninguna de ellas sea paralela a ninguna otra. Calculemos los primeros casos: para n=1 (una sola recta) divide el plano en dos partes. n=2 lo divide en 4 partes, n=3 y n=4 lo divide en 7 y 11 partes respectivamente. Cual sera la ecuacion o regla de recurrencia?'], 20/20, ['https://www.uam.es/personal_pdi/ciencias/.../cap6-recurrencias.pdf']).
pr(0020-8, ['Cual es la respuesta del ejemplo anterior?'], ['Fijemonos en como pasamos de n=2 a n=3. Al agregar una recta, y como las dos rectas viejas deben cortar a la nueva, lo que hacemos es agregar tres regiones del plano. El paso del caso n=3 al caso n=4 es analogo de nuevo agregamos una recta, que corta a las tres existentes y crea cuatro regiones nuevas. La generalizacion de este argumento nos permite deducir que la regla de recurrencia es An = An-1 + n (para todos los n mayores que 1)'], 20/20, ['https://www.uam.es/personal_pdi/ciencias/.../cap6-recurrencias.pdf']).
pr(0020-9, ['Ejercicio de ecuacion de recurrencia 1'], ['Se tienen dos depositos de 6 litros cada uno y se realiza el siguiente proceso: en cada paso, se echa la mitad del contenido del primer deposito en el segundo y, a continuacion, la mitad del contenido del segundo en el primero. Si se repite este proceso sucesivas veces, cual es la ecuacion de recurrencia que se obtiene'], 0/20, ['www.ehu.eus/~mtpalezp/mates/eureka_2009.pdf']).
pr(0020-10, ['Cual es la respuesta del ejercicio anterior (9)'], ['La respuesta a este problema es la siguiente. Si representamos por An y Bn al contenido del primero y segundo depositos, respectivamente, a lo largo del proceso, entonces se tienen las relaciones: Si A1=6, An+1=(3An+2Bn)/4, Si B1=6 Bn+1=(An+2Bn)/4'], 20/20, ['www.ehu.eus/~mtpalezp/mates/eureka_2009.pdf']).
pr(0020-11, ['ejercicio de ecuacion de recurrencia 2'], ['En dos lugares de un prado donde pasta un asno se colocan dos montones iguales de alfalfa. El asno se dirige a uno de ellos y, cuando ha recorrido la mitad de la distancia, se dirige hacia el otro monton, repitiendose el cambio de direccion cada vez que recorre la mitad de la distancia que le separa del monton a donde se dirige. Se pide probar que el asno nunca llega a comerse la alfalfa.'],0/20, ['www.ehu.eus/~mtpalezp/mates/eureka_2009.pdf']).
pr(0020-12, ['cual es la respuesta al ejercicion anterior (11)'], ['La solucion es la siguiente. Para simplificar la notacion, supondremos que los montones se encuentran en el origen y en un punto alejado una unidad del origen y que el asno esto en la recta que une ambos puntos. La sucesion ( xn ) que representa la distancia del asno al origen a lo largo del proceso se define por: Si X1=a (0 < a < 1), entonces {X2n =(Xsubindice(2n)/2}, Xsubindice(2n+1) = (1+X2n)/2, Se puede probar por metodos analiticos que la sucesion de los terminos pares tiene limite 1/3 y la de los impares 2/3, por lo que la sucesion completa no tiene limite y el asno no termina por decidirse si comer de uno u otro monton. Es el ejemplo clasico de recurrencia en una indecision ya que el pobre asnito no llegara a comer alfalfa.'], 20/20, ['www.ehu.eus/~mtpalezp/mates/eureka_2009.pdf']).
pr(0020-13, ['ejercicio de ecuacion de recurrencia 3'], ['Resuelve la siguiente ecuacion de recurrencia homogenea, con sus condiciones iniciales: An= 4 An -1 -4 An-2 , para n>=2 donde A0=6, A1=8'], 0/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-14, ['cual es la respuesta del ejercicio de ecuacion de recurrencia 3'], ['La ecuacion caracteristica es Xcuadrado = 4X-4. Las raices caracteristicas son x=2 (raiz doble) La solucion general es (An = A*2+B*n*2elevado a la n.) Para calcular la solucion particular aplicamos condiciones iniciales:  A0 = A*20+B*0*20= A=6 y A1 = A*2+B*1*2=2A+2B=8 de lo que B=-2 En conclusion la ecuacion de recurrencia    An= 6*2n-2*n*2n.'], 20/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-15, ['ejercicio de ecuacion de recurrencia 4'], ['Resuelve la siguiente ecuacion de recurrencia homogenea, con sus condiciones iniciales: An= 2an-1 - An-2 , para n >= 2 donde A0=4, A1=1'], 0/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-16, ['cual es la respuesta del ejercicio de ecuacion de recurrencia 4'], ['La ecuacion caracteristica es Xcuadrado = 2X -1. Las raices caracteristicas son x=1 (raiz doble) La solucion general es An = A*1+B*n*1= A+B*n. Para calcular la solucion particular aplicamos las condiciones iniciales:       A0 = A+B*0= A=4 y A1 = A+B*1= A+B=1 Asi la solucion de la relacion de recurrencia es An =4+(-3)*n.'], 20/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-17, ['ejercicio de ecuacion de recurrencia 5'], ['Resuelve la siguiente ecuacion de recurrencia homogenea, con sus condiciones iniciales: An+2 =-4(An+1)+5An , para n >= 0 donde A0=2, A1=8'], 0/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-18, ['cual es la respuesta del ejercicio de ecuacion de recurrencia 5'], ['La ecuacion caracteristica es Xcuadrado = -4X + 5. Las raices caracteristicas son: x=1, x=-5. La solucion general es  An = A*1elevado a n +B*(-5)elevado a n sera= A+B*(-5)elevado n. Para calcular la solucion particular aplicamos las condiciones iniciales: A0 = A+B*1= A+B =2 y A1 = A+B*(-5)= A-5B= 8  Entonces A=3 y B=-1 Donde la solucion de la ecuacion de recurrencia es An = 3+(-1)*(-5)elevado a n = 3-(-5)elevado a n .'], 20/20,['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-19, ['ejercicio de ecuacion de recurrencia 6'], ['Resuelve la siguiente ecuacion de recurrencia homogenea, con sus condiciones iniciales: An = 5An-1-6An-2, para n >= 2 donde A0=1, A1=0'], 0/20,  ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-20, ['cual es la respuesta del ejercicio de ecuacion de recurrencia 6'], ['La ecuacion caracteristica es Xcuadrado = 5x - 6. Las raices caracteristicas son: x=3, x=2. La solucion general es    An = A*3elevado a n +B*2elevado a n. Para calcular la solucion particular aplicamos las condiciones iniciales: A0 = A+B= 1 y a1 =A*3+B*2= 3A+2B = 0 para lo que A=-2 y B=3 y la solucion de la ecuacion de recurrencia es an = (-2)*3elevado a n + 3*2elevado a n =-2*3elevado a n + 3 * 2elevado a n.'], 20/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']). 
pr(0020-21, ['ejercicio de ecuacion de recurrencia 7'], ['Resuelve la siguiente ecuacion de recurrencia homogenea, con sus condiciones iniciales: An =7(An-1)-10An-2, con n >= 2 donde A0=2, A1=1'], 0/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-22, ['cual es la respuesta del ejercicio de ecuacion de recurrencia 7'], ['La ecuacion caracteristica es Xcuadrado = 7X - 10. Las raices caracteristicas son: x=5, x=2. La solucion general es   An = A*5elevado a n +B*2elevado a n . Para calcular la solucion particular aplicamos las condiciones iniciales: A0 = A*1+B*1 =A+B = 2 y A1 = A*5+B*2= 5A+2B = 1 por lo tanto A=-1 y B=3. La ecuacion de recurrencia seria An =(-1)*5elevado a n +3*2elevado a n= -5elevado a n+3*2elevado a n.'], 20/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']). 
pr(0020-23, ['ejercicio de ecuacion de recurrencia 8'], ['Resuelve la siguiente ecuacion de recurrencia homogenea, con sus condiciones iniciales: An = 6An-1 - 11An-2 + 6An-3 y ,para n >= 3 donde A0=2, A1=5, A2=15'], 0/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-24, ['cual es la respuesta del ejercicio de ecuacion de recurrencia 7'], ['La ecuacion caracteristica es Xal cubo = 6xal cuadrado - 11x + 6. Las raices caracteristicas son: x=1, x=2, x=3. La solucion general es An =A*1elevado a n + B*2elevado a n + B*3elevado a n= A+B*2elevado a n +C*3elevado a n. Para calcular la solucion particular aplicamos las condiciones iniciales: A0 =A+B*1+ C*1 = A+B+C= 2, A1 = A+B*2 +C*3 = A+2B+3C=5 y A2 =A+B*2al cuadrado +C*3al cuadrado =A+4B+9C=15 entonces A=1, B=-1 y C=2 y la ecuacion de recurrencia sera: An =1+(-1)*2elevao a n +2*3elevado a n =1-2elevado a n + 2*3elevado a n.'], 20/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-25, ['otros ejercicios de recurrencia 1'], ['Sea An el numero de palabras de longitud n formadas con los digitos {0, 1}, que no tienen dos ceros consecutivos. Encuentra una relacion de recurrencia para calcular An y resuelvela.'], 0/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-26, ['respuesta a otros ejercicios recurrencia 1'], ['LEA CUIDADOSAMENTE LA RESPUESTA VUELVA A LEER PUEDE CONFUNDIRSE FACILMENTE. Las palabras de longitud n formadas con los digitos {0, 1} que no tienen dos ceros consecutivos, se toman y se dividen en dos grupos: las que empiezan por 1 y las que empiezan por 0. Las que empiezan por 1, a continuacion del 1 tienen una palabra de longitud n-1 sin dos ceros consecutivos. Las que empiezan por 0, a continuacion de este han de llevar un 1, y a continuacion del 1 contienen tienen una palabra de longitud n - 2 sin dos ceros consecutivos. TOMESE SU TIEMPO Y VUELVA A LEER HASTA ENTENDER LA PRIMERA PARTE. Ahora Reciprocamente, si a una palabra de longitud n - 1 sin dos ceros consecutivos le agregamos un 1 delante obtenemos una palabra de longitud n sin dos ceros consecutivos, y si a una palabra de longitud n - 2 sin dos ceros consecutivos, le agregamos delante el bloque 01 obtenemos una palabra de longitud n sin dos ceros consecutivos. De nuevo tomese su tiempo para entender esta parte si no entiende relea desde la pregunta anterior. Asi An cumplira la relacion de recurrencia An = An-1 + An-2. Como condiciones iniciales tenemos: A0=1 que significaria que existe una unica palabra de longitud 0, la palabra vacia que no tiene dos ceros consecutivos. A1=2 en este caso existen dos palabra de longitud 1, las palabras 0 y 1, que no tienen dos ceros consecutivos y A2=3 que existen dos palabras de longitud 2 sin dos ceros consecutivos, las palabras 01, 10, 11. Para resolverla seguimos los pasos habituales: La ecuacion caracteristica es  Xcuadrado = x + 1. Las raices caracteristicas son: X=[1+sqrt(5)]/2 y X=[1-sqrt(5)]/2 La solucion general seria An = A{[1+sqrt(5)]/2}elevado a n + B{[1-sqrt(5)]/2}elevado a n. Para calcular la solucion particular aplicamos las condiciones iniciales y resolviendo queda A=[5+3sqrt(5)]/10 y B=[5-3sqrt(5)]/10 y la solucion de la ecuacion de recurrencia seria An=[5+3sqrt(5)]/10*{[1+sqrt(5)]/2}elevado a n + [5-3sqrt(5)]/10*{[1-sqrt(5)]/2}elevado a n'], 0/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-27, ['otros ejercicios de recurrencia 2'], ['Halla una ecuacion de recurrencia que genere la siguiente sucesion: {1, 2, 5, 12, 29, 70, 169, . . . } y resuelve dicha ecuacion, obteniendo en funcion de n, el termino general An de la sucesion'], 0/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-28, ['respuesta a otros ejercicios recurrencia 2'], ['An cumple la relacion de recurrencia   An = 2an-1 + an-2 con condiciones iniciales A0=1, A1=2. Sabiendo los ejemplos de este curso facilmente podra llegar a la respuesta, el procedimiento es similar a los anteriores, ecuacion caracteristica, raicez, solucion general, solucion particular substituyendo las condiciones iniciales y la ecuacion de recurrencia deberia de quedarle en An ={[2+sqrt(2)]/4}*(1+sqrt(2))elevado a n + {[2-sqrt(2)]/4}*(1-sqrt(2))elevado a n'], 20/20, ['www.fiwiki.org/images/8/87/MD11-12EjerciciosResueltosTema5.pdf']).
pr(0020-29, ['Combinatoria, que es combinatoria'], ['La Combinatoria estudia las ordenaciones o agrupaciones de un determinado numero de elementos.'], 0/20, ['http://www.ditutor.com/combinatoria/combinatoria.html']).
pr(0020-30, ['Como resuelvo un problema de combinatoria'], ['En todo problema combinatorio hay varios conceptos claves que debemos distinguir: Poblacion: Es el conjunto de elementos que estamos estudiando.   Muestra: Es un subconjunto de la poblacion. Orden de la muestra: Es decir, si es importante que los elementos de la muestra aparezcan ordenados o no. Repeticion de la muestra: La posibilidad de repeticion o no de los elementos. Por otro lado Existen tambien las permutaciones'], 0/20, ['http://www.ditutor.com/combinatoria/combinatoria.html']).
pr(0020-31, ['Que es una permutacion'], ['Normalmente usamos la palabra combinacion descuidadamente, sin pensar en si el orden de las cosas es importante. En otras palabras: Mi ensalada de frutas es una combinacion de manzanas, uvas y bananas, no importa en que orden pusimos las frutas, podria ser bananas, uvas y manzanas o uvas, manzanas y bananas, es la misma ensalada. La combinacion de la cerradura es 472: ahora si importa el orden. 724 no funcionaria, ni 247. Tiene que ser exactamente 4-7-2. Asi que en matematicas llamamos Si el orden no importa, es una combinacion, si no importa entonces es una permutacion.'], 0/20, ['Juancarlos Salcedo Basado en: www.cobachsonora.edu.mx:8086/portalcobach/pdf/.../FP6s-ProbyEst2.p...']).
pr(0020-32, ['Ejercicio 1 de combinatoria'], ['Con las letras A y B forma todas las palabras de tres letras que puedas, tengan o no sentido. Cuantas son?'], 0/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 31)']).
pr(0020-33, ['Respuesta al ejercicio 1 de combinatoria'], ['2 a la 3, que son 8 palabras con las letras A y B'], 20/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 31)']).
pr(0020-34, ['Ejercicio 2 de combinatoria'],  ['De cuantas formas se pueden sentar 10 personas alrededor de una mesa circular, de forma que en cada caso haya al menos dos personas sentadas en diferente orden?'], 0/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 33)']).
pr(0020-35, ['Respuesta al ejercicio 2 de combinatoria'], ['9 factorial = 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1 = 362.880'], 20/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 33)']).
pr(0020-36, ['Ejercicio 3 de combinatoria'], ['Con los digitos 1, 2, 3 y 4 forma todos los numeros de dos cifras que puedas sin que se repita ninguna y de modo que ningun par de numeros tenga las mismas cifras.'], 0/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 10)']).
pr(0020-37, ['Respuesta al ejercicio 3 de combinatoria'], ['4 * (3 / 2) = 6'], 20/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 10)']).
pr(0020-38, ['Ejercicio 4 de combinatoria'],  ['Con los digitos 1, 2 y 3 forma todos los numeros de tres cifras que puedas sin que se repita ninguna. Cuantos son?'], 20/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 5)']).
pr(0020-39, ['Respuesta al ejercicio 4 de combinatoria'], ['3 factorial = 3 * 2 * 1 = 6'], 20/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 5)']).
pr(0020-40, ['Ejercicio 5 de combinatoria'], ['Con los digitos 8 y 9, forma todos los numeros de tres cifras que puedas. Cuantos son?'], 20/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 4)']).
pr(0020-41, ['Respuesta al ejercicio 4 de combinatoria'], ['2 a la 3, que son 8 numeros de 3 cifras'], 20/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 4)']).
pr(0020-42, ['Ejercicio 6 de combinatoria'], ['Un alumno de 4to  tiene 5 camisetas, 4 pantalones y 3 pares de zapatillas de deporte. De cuantas formas diferentes puede vestirse para ir a entrenar?'], 20/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 59)']).
pr(0020-43, ['Respuesta al ejercicio 6 de combinatoria'], ['5 * 4 * 3 = 60, 60 formas'], 20/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 59)']).
pr(0020-44, ['Ejercicio 7 de combinatoria'], ['Si lanzamos al aire un dado y una moneda, cuantos resultados diferentes podemos obtener?'], 20/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 60)']).
pr(0020-45, ['Respuesta al ejercicio 7 de combinatoria'], ['6 * 2 = 12 combinaciones'], 20/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf (preg 60)']).
pr(0020-46, ['Ejercicio 8 de combinatoria'], ['En la carta de un restaurante se puede elegir un menu compuesto de un primer plato, un segundo plato y un postre. Hay para elegir 8 primeros platos, 5 segundos y 6 postres. Cuantos menus diferentes se pueden elegir?'], 0/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf  (preg 80)']).
pr(0020-47, ['Respuesta al ejercicio 8 de combinatoria'], ['8 * 5 * 6 = 240 menus'], 20/20, ['http://www.vicentegonzalezvalle.es/wp-content/uploads/2011/10/14_Combinatoria_y_probabilidad.pdf  (preg 80)']).
pr(0020-48,  ['Ejercicio 9 de combinatoria'], ['Si nueve estudiantes toman un examen y todos obtienen diferente calificacion, cualquier alumno podria alcanzar la calificacion mas alta. La segunda calificacion mas alta podria ser obtenida por uno de los 8 restantes. La tercera calificacion podria ser obtenida por uno de los 7 restantes. Cuantas permutaciones son posibles de las 3 mejores notas'], 0/20, ['http://www.aaamatematicas.com/sta-permu.htm']).
pr(0020-49, ['Respuesta al ejercicio 9 de combinatoria'], ['La cantidad de permutaciones posibles seria: P(9,3) = 9*8*7 = 504 combinaciones posibles de las tres calificaciones mas altas.'], 20/20,['http://www.aaamatematicas.com/sta-permu.htm']). 
pr(0020-50, ['Como resuelvo un ejercicio de conjuntos'], ['Antes de poder resolver un problema de conjuntos debemos saber que incluso antes de saber y entender lo que son los numeros la gente tuvo que saber de donde venian y que significaban, que es simplemente conjuntos, que no es mas que una agrupacion o cumulo de varios elementos, tal como coleccionar fichas, cartas o cualquier cosa.'], 0/20, ['Juancarlos Salcedo 0020']).
pr(0020-51, ['Los conjuntos pueden contener conjuntos'], ['Un conjunto es la agrupacion de varios elementos, y los elementos son todo aquello que podemos imaginar unico e individual a las demas cosas a su alrededor, pero que sea unico e individual no quiere decir que no pueda ser grande, puede existir un conjunto de conjuntos y esto seria un subconjunto (conjunto dentro de un conjunto), si tengo un conjunto Medias, puede contener dentro de si varios conjuntos grandes, como: medias cortas y largas y de ellas hay de varios colores, formas etc. un conjunto puede ser tan grande como sus elementos lo sean.'], 0/20, ['Juancarlos Salcedo 0020']).
pr(0020-52, ['Que tan grande puede ser un conjunto'], ['Un conjunto puede ser tan grande como se pueda se encuentre o se requiera, hay varios tipos incluso existen los conjuntos infinitos, conjunto formado por elementos imposibles de contar o enumerar en su totalidad debido a que nunca terminan o no tienen fin, por ejemplo: las estrellas, este tipo de conjunto solo se usan para comprension, por el contrario de estos conjuntos existen los finitos, aquellos en los que se pueden contar la totalidad de sus elementos, tambien existe el conjunto unitario, el que posee solo un elemento. El conjunto vacio por el contrario es un conjunto que no tiene elementos porque no existen, Los Homogeneos, en los que todos sus elementos son del mismo tipo y los heterogeneos donde sus elementos son de diferentes tipos, los conjuntos equivalentes son aquellos que con respecto a otro tienen el mismo numero de elementos y los conjuntos iguales son los que tienen mismo tamano y tipos de elementos'], 0/20, ['Juancarlos Salcedo basado en: http://www.gcfaprendelibre.org/matematicas/curso/los_conjuntos/entender_los_conjuntos/2.do']).
pr(0020-53, ['ejercicio de conjuntos 1'], ['Se tiene un cierto numero de alumnos en un aula, se sabe que cada alumno estudia: Matematicas, Fisica y quimica. entonces: Si 48 estudian matematicas, 45 Fisica, 49 quimica,28 Matematicas y fisica, 26 matematica y quimica, 28 fisica y matematica y 18 las tres asignaturasc cuantos alumnos estan estudiando en total'], 0/20, ['http://probabilidadparaelmundo.blogspot.com/2013/05/blog-post.html']).
pr(0020-54, ['respuesta al ejercicio de conjuntos 1'], ['(Total)=48+45+49-28-26-28+18=78alumnos'], 20/20, ['Juancarlos Salcedo basado en http://probabilidadparaelmundo.blogspot.com/2013/05/blog-post.html']).
pr(0020-55, ['Encuentra el conjunto que consta de los numeros enteros mayores que -2 y menores que 11.'], ['El conjunto es:{-1,0,1,2,3.4,5.6,7,8,9,10}'], 20/20, ['http://probabilidadparaelmundo.blogspot.com/2013/05/blog-post.html']).
pr(0020-56, ['ejercicio de conjuntos 2'], ['Si A= {1,2/1, 1/3, 3/2} y B= {2/3, 3/2, 1, 1/4, 1/2, 5/2, -1}. Encontrar B/A.'], 0/20, ['http://probabilidadparaelmundo.blogspot.com/2013/05/blog-post.html']).
pr(0020-57, ['respuesta al ejercicio de conjuntos 2'], ['Los elementos que estan en B y no estan en A son: B/A= {2/3, 1/4, 5/2, -1}.'], 20/20, ['http://probabilidadparaelmundo.blogspot.com/2013/05/blog-post.html']).
pr(0020-58, ['ejercicio de conjuntos 3'], ['Juan, Jose, Luis, Mario, Alfredo, Ruben, Roberto, Bruno, Adrian, Fernando, Daniel y Andres estudian en el mismo grupo. De ellos, Juan, Luis, Mario, Ruben y Roberto practican natacion. Jose, Mario, Alfredo Roberto, Bruno y Andres juegan futbol. Cuales ninos hacen deporte?'], 0/20, ['http://probabilidadparaelmundo.blogspot.com/2013/05/blog-post.html']). 
pr(0020-59, ['respuesta al ejercicio de conjuntos 3'], ['Llamamos A al conjunto de ninos que nadan, es decir:  A={Juan , Luis, Mario, Ruben, Roberto} y B al de los ninos que juegan futbol:  B={Jose, Mario, Alfredo, Roberto, Bruno, Andres} Ahora formamos la coleccion de ninos que practican deporte: AB={Juan, Luis, Mario, Ruben, Roberto, Jose, Mario, Alfredo, Roberto, Bruno, Andres}.'], 20/20,  ['http://probabilidadparaelmundo.blogspot.com/2013/05/blog-post.html']).
pr(0020-60, ['Los miembros del consejo de seguridad de la ONU durante 1997 son Japon, Kenia,Polonia, Portugal, Republica de Corea, Federacion Rusa, Suecia, Reino Unido, Estados Unidos de Norteamerica, Chile, China, Costa Rica, Egipto, Francia y Guinea-Bissau. De ellos Federacion Rusa, Reino Unido, Estados Unidos de Norteamerica, China y Francia son miembros permanentes. Por otra parte, Portugal, Chile, Costa Rica, Francia y Guinea-Bissau tienen por idioma oficial una lengua romance. Que paises son miembros permanentes y tienen una lengua romance por idioma?.'], ['Llamamos A al conjunto de miembros permanentes de el Consejo de Seguridad de la ONU, es decir: A = {Federacion Rusa, Reino Unido, Estados Unidos de Norteamerica, China, Francia} y B al conjunto de paises cuyo idioma sea una lengua romance, o sea: B = {Portugal, Chile, Costa Rica, Francia, Guinea-Bissau} finalmente los paises que son miembros permanentes y cuyo idioma es una lengua romance son los que estan en ambos conjuntos, llamemos C a dicho conjunto, entonces:  C = {Francia'], 20/20, ['http://probabilidadparaelmundo.blogspot.com/2013/05/blog-post.html']).
pr(0020-61, ['induccion matematica que es'], ['Una proposicion es verdadera para todos los valores de la variable si se cumplen las siguientes condiciones: La proposicion p(n) es verdadera para n = 1 , o bien, p(1) es verdadera. Hipotesis de Induccion. Se supone que p(k) es verdadera , donde k es un numero natural cualesquiera. Tesis de Induccion. Se demuestra que p(k + 1) es verdadera, o bien, p(k) verdadera entonces p(k + 1) verdadera.'], 0/20, ['esaez.mat.utfsm.cl/iii.pdf']).
pr(0020-62, ['Ejemplo de induccion matematica'], ['Para todo n que pertenezca a los naturales, n al cuadrado - 3n - 1 < 0, Es facil probar que esta desigualdad es verdadera para n = 1, 2, 3. Sin embargo, para n = 4 no se cumple ya que 4al cuadrado - 3*4 -  1 = 3 > 0. Notese que este ejemplo sencillo muestra que una proposicion puede ser verdadera para los primeros numeros naturales, sin embargo, es falsa , para numeros naturales mas grandes.'], 0/20, ['esaez.mat.utfsm.cl/iii.pdf']).
pr(0020-63, ['Ejemplo de induccion matematica 2'], ['Para todo n que pertenezca a los naturales, (2n-1)(2n+1)(2n+3), es divisible por 5. Es facil probar que esta proposicion es verdadera para n = 1, 2, 3. Sin embargo, para n = 4 no se cumple dado que (2*4-1)(2*4+1)(2*4+3) = 693. no es divisible por 5'], 0/20, ['esaez.mat.utfsm.cl/iii.pdf']).
pr(0020-64, ['ejercicio de induccion matematica 1'], ['Pruebe que la formula 1*2+2*3+3*4+...+n*(n+1)= n(n+1)(n+2)]/3 es valida para todo natural n.'], 0/20, ['esaez.mat.utfsm.cl/iii.pdf']).
pr(0020-65, ['respuesta ejercicio de induccion matematica 1'], ['Primero verificamos que p(1) sea valida, p(1)=2, hipotesis: p(k)= k*(k+1)=k(k+1)(k+2)/3. Tesis: k*(k+1)+(k+1)*(k+2)=k(k+1)(k+2)/3 Sumando (k+1)*(k+2) a ambos lados de la desigualdad se obtiene k*(k+1)+(k+1)*(k+2)=k(k+1)(k+2)/3+(k+1)*(k+2) luego solo resta probar que k(k+1)(k+2)/3 + (k+1)*(k+2) = [(k+1)(k+2)(k+3)]/3 Factorizando por (k+1)(k+2), se tiene (k+1)(k+2)(1+k/3) = [(k+1)(k+2)(k+3)]/3 que es justamente la tesis deseada y lo que prueba que p(n) es verdadera para todo natural n'], 20/20, ['esaez.mat.utfsm.cl/iii.pdf']).
pr(0020-66, ['ejercicio de induccion matematica 2'], ['Demuestre que para todo natural n >= 2 1/sqrt(1) + 1/sqrt(2) + 1/sqrt(3) + ..... + 1/sqrt(n) > sqrt(n)'], 0/20, ['esaez.mat.utfsm.cl/iii.pdf']).
pr(0020-67, ['respuesta ejercicio de induccion matematica 2'], ['validando para numeros naturales con n = 2 el resultado es verdadero (1 + 1/sqrt(2)) > sqrt(2). La hipotesis seria que n=k  1/sqrt(1) + 1/sqrt(2) + 1/sqrt(3) + ..... + 1/sqrt(k) > sqrt(k) y la tesis: n=k+1 1/sqrt(1) + 1/sqrt(2) + 1/sqrt(3) +...+  1/sqrt(k) + 1/sqrt(k+1)  > sqrt(k+1) y sumando 1/sqrt(k+1) a la igualdad de la hipotesis facilmente se concluye la demostracion.'], 20/20, ['esaez.mat.utfsm.cl/iii.pdf']).
pr(0020-68, ['es grupo o conjunto?'], ['Un grupo es un conjunto no vacio G en donde hay definida una operacion binaria * , llamada producto, la cual satisface: a) a*b pertenece a G para todo a,b que pertenecen a G b) a*(b*c) = (a*b)*c tambien para todo a,b,c perteneciente a G c) Existe un elemento neutro. d) para todo a en G, existe un inverso el cual hace q aplicando el producto entre ellos sea = al elemento neutro.'], 0/20, ['webdelprofesor.ula.ve/ciencias/lico/Libros/lico_algebra.pdf']).
pr(0020-69, ['ejemplo de grupo'], ['Sea G el Conjunto de matrices 2x2 de la forma (a,b,c,d), donde a,b,c,d son numeros reales y ad-bc=1. Se puede ver entonces que G es un grupo.'], 0/20, ['webdelprofesor.ula.ve/ciencias/lico/Libros/lico_algebra.pdf']).
pr(0020-70, ['un anillo o un grupo?'], ['Un anillo R es un conjunto no vacio en donde estan definidas un par de operaciones llamadas suma y producto, las cuales denotamos por + y * respectivamente. En donde satisfacen 1. Para todo a, b que pertenece a R, se tiene que a+b y a*b estan en R. 2.a+(b+c)=(a+b)+c. 3.Existe el elemento 0. 4.a+(-a)=-a+a= 0. 5.a+b=b+a.b. 6.a*(b*c)=(a*b)*c. y 7.a*(b+c)=a*b+a*c. y (a+b)*c=a*c+b*c.'], 0/20, ['webdelprofesor.ula.ve/ciencias/lico/Libros/lico_algebra.pdf']).
pr(0020-71, ['ejemplo de anillo '], ['El conjunto Z de los numeros enteros, con las operaciones de suma y producto es un anillo conmutativo con unidad.'], 0/20, ['webdelprofesor.ula.ve/ciencias/lico/Libros/lico_algebra.pdf']).
pr(0020-72, ['La mama de Pedro tiene cuatro hijos, a los que con buen criterio llamo Paul, George, Ringo y... Cual es el nombre del cuarto?'], ['Pedro. El cuarto hijo de la mama de Pedro es el mismo Pedro.'], 20/20, ['http://es.folj.com/logic-puzzles/']).
pr(0020-73, ['kathy tiene doce medias negras y doce medias blancas en su gaveta. En completa oscuridad, y sin mirar, cuantas medias debe de tomar de la gaveta para asegurarse de tener un par que combine?'], ['Las medias no tienen lado izquierdo o derecho, asi que cualquier media negra puede ir con otra negra y cualquier media blanca puede ir con cualquier otra de color blanco. Si tienes tres medias y son de color blanco o negro, al menos tendras dos del mismo color, dandote un par que combine.'], 20/20, ['http://es.folj.com/logic-puzzles/']).
pr(0020-74, ['Si 5 gatos cazan 5 ratones en 5 minutos, Cuantos gatos cazaran 100 ratones en 100 minutos?.'],['Exactamente... 5 gatos.'], 20/20, ['http://www.juegosdelogica.com/neuronas/solacert/solucion_acertijo_27.htm']).
pr(0020-75, ['Como hacemos para que a veinte, agregandole uno nos de diecinueve?'], ['Veinte en numero romanos es XX si le agregamos un uno en el medio nos queda XIX.'], 20/20, ['http://www.juegosdelogica.com/neuronas/solacert/solucion_acertijo_19.htm']).
pr(0020-76, ['Un oso camina 10 Km. hacia el sur, 10 hacia el este y 10 hacia el norte, volviendo al punto del que partio. De que color es el oso?'], ['El color del oso es blanco, por ser un oso polar. Los unicos lugares donde se cumple la condicion de regresar al punto de partida son el Polo Norte y cualquier punto situado a 10 km al norte de los paralelos que midan 10 km de circunferencia, puesto que al hacer los 10 km al este volveremos al punto de partida. En cualquiera de estos casos estaremos en uno de los Polos, por lo que el oso sera blanco.'], 20/20, ['http://www.juegosdelogica.com/neuronas/acertijo.htm']).
pr(0020-77, ['Un pastor tiene que pasar un lobo, una cabra y una lechuga a la otra orilla de un rio, dispone de una barca en la que solo caben el y una de las otras tres cosas. Si el lobo se queda solo con la cabra se la come, si la cabra se queda sola con la lechuga se la come, como debe hacerlo?.'], ['El pastor pasa primero la cabra, la deja en la otra orilla y regresa a por el lobo, al cruzar deja al lobo y vuelve con la cabra, deja la cabra y cruza con la lechuga, deja la lechuga con el lobo y regresa a por la cabra.'], 20/20, ['http://www.juegosdelogica.com/neuronas/solacert/solucion_acertijo_1.htm']).
pr(0020-78, ['Tres amigos con dificultades economicas comparten un cafe que les cuesta 30 pesetas, por lo que cada uno pone 10. Cuando van a pagar piden un descuento y el propietario les rebaja 5 pesetas tomando cada uno una peseta y dejando dos en un fondo comun. Mas tarde hacen cuentas y dicen: Cada uno ha pagado 9 pesetas asi que hemos gastado 9x3=27 pesetas que con las dos del fondo hacen 29. donde esta la peseta que falta?'], ['No falta ninguna peseta, tan solo hay un error de calculo, las dos pesetas del fondo no hay que sumarlas a lo pagado, sino restarlas, la operacion correcta seria 9x3=27 pts pagadas 27-2=25 pts gastadas.'], 20/20, ['http://www.juegosdelogica.com/neuronas/solacert/solucion_acertijo_1.htm']).
pr(0020-79, ['El amo le dio al criado 500 pesetas para que fuese al mercado a comprarle 100 cabezas de ganado, teniendo este que comprar: vacas, ovejas y gallinas y emplear justo las 500 pesetas. Cuando llego al mercado comprobo que las vacas costaban 25 pesetas, las ovejas 5 pesetas y las gallinas un real. Cuantas cabezas de ganado compro de cada?'], ['80 gallinas X 1 real = 80 reales = 20 ptas 1 oveja a 5 ptas. 19 vacas a 25 ptas = 475 pesetas. 80 gallinas = 20 ptas. 1 oveja = 5 ptas. 19 vacas = 475 ptas 100 animales = 500 ptas'], 20/20, ['http://www.juegosdelogica.com/neuronas/solacert/solucion_acertijo_1.htm']).
pr(0020-80, ['Dos pastores hablaban: - Por que no me das una de tus ovejas, asi tendremos igual cantidad? A lo que su amigo le responde: - Mejor dame una de las tuyas asi yo tendre el doble de ovejas que tu. Cuantas ovejas tenia cada uno?'], ['Un pastor tenia 5 ovejas y el otro 7.'], 20/20,['http://www.juegosdelogica.com/neuronas/solacert/solucion_acertijo_1.htm']).
pr(0020-81, ['Tenemos un vaso con agua y un vaso con vino. Tomamos una cucharadita de agua del primer vaso, la echamos en el segundo y removemos, con lo que tendremos una mezcla homogenea de vino con un poco de agua. A continuacion, con la misma cuchara, tomamos una cucharadita de esta mezcla y la echamos en el vaso de agua. Habra mas vino en el vaso de agua que agua en el vaso de vino, o viceversa?'], ['La apariencia enganosa es la siguiente: al vino le echamos una cucharada de agua pura, mientras que al agua le echamos una cucharada de vino aguado, luego habra mas agua en el vino que vino en el agua. Pero este razonamiento es falso, porque al vaso de agua, cuando le echamos la cucharada de vino aguado, le falta la cucharada de agua que hemos quitado previamente. Razonando de la forma debida, resulta evidente que habra la misma cantidad de agua en el vino que de vino en el agua: a cada vaso le hemos quitado una cucharada de liquido y luego se la hemos agregado, es decir, cada vaso contiene al final de la operacion la misma cantidad de liquido que al principio, luego lo que al vaso de vino le falte de vino lo tendra de agua, y viceversa.'], 20/20, ['http://www.unlu.edu.ar/~dcb/matemat/queres1.htm']).
pr(0020-82, ['Todas mis camisas son blancas menos dos, todas son azules menos dos y todas son rosa menos dos. Cuantas camisas tengo de cada color?'], ['Si todas son blancas menos dos, entre azules y rosas solo hay dos, es decir una de cada una. Repitiendo el mismo razonamiento para las rosas o azules, se ve que solo hay una camisa blanca, una azul y una rosa. Esta es la solucion obvia pero cabe otra mas sofisticada: tengo dos camisas, y ninguna de las dos es ni blanca ni azul ni rosa (por ejemplo: una amarilla y otra verde). Todas menos dos, es decir cero son blancas, cero son azules y cero son rosas.'], 20/20, ['http://www.unlu.edu.ar/~dcb/matemat/queres1.htm']).
pr(0020-83, ['A un herrero le trajeron 5 trozos de cadena, de tres eslabones cada uno, y le encargaron que los uniera formando una cadena continua. Antes de poner manos a la obra, el herrero comenzo a meditar sobre el numero de anillos que tendria necesidad de abrir y forjar uno nuevo. Decidio que le haria falta abrir y cerrar cuatro anillos. No es posible efectuar este trabajo abriendo y forjando un numero menor de anillos?'], ['Puede cumplirse el trabajo encargado, abriendo solo tres eslabones. Para ello es preciso soltar los tres eslabones de uno de los trozos y unir con ellos los extremos de los cuatro trozos restantes.'], 20/20, ['http://www.unlu.edu.ar/~dcb/matemat/queres1.htm']).
pr(0020-84, ['Deduccion ejercicios 1'],['Dos presos estan encerrados en una celda. En lo alto, a varios metros del suelo, hay una ventana sin barrotes. Hagan lo que hagan, parandose en la cama o uno en los hombros del otro, no logran llegar a la ventana para escapar. Dandose por vencidos, deciden hacer un tunel, pero tambien terminan por abandonar la idea porque les lleva mucho tiempo. Finalmente, a uno de ellos se le ocurre como escaparse. Cual es su plan?'], 0/20, ['http://www.enplenitud.com/acertijos-y-otros-juegos-de-deduccion-y-logica.html']).
pr(0020-85, ['Respuesta al ejercicio 1 deduccion'], ['El plan de los presos es cavar parte del tunel y amontonar la tierra hasta alcanzar la ventana.'], 20/20, ['http://www.enplenitud.com/acertijos-y-otros-juegos-de-deduccion-y-logica-soluciones.html']).
pr(0020-86, ['Es necesario saber que es logica'], ['En un principio podriamos decir que no porque la persona puede tener bastante sentido comun sin necesariamente llamarlo logica, pero tambien si te dicen que algo es logico es necesario saber que es logica para entender. Sin embargo muchas personas viven sin saber lo que es logica literalmente y viven para contarlo. Lo cierto es que sirve para ser mas rapido a la hora de explicar las cosas y que te entiendan mejor'], 20/20, ['Juancarlos Salcedo 0020']).
pr(0020-87, ['Que es matematica discreta'], ['Parte de la matematica que estudia los objetos discretos (distintos o no conectados) son usadas en donde los objetos son contados, cuando las relaciones entre conjuntos finitos son estudiados y cuando los procesos que involucran un numero finito de pasos son analizados'], 20/20, ['eisc.univalle.edu.co/.../Matematicas_Discretas_1/.../DiscretasI_capitulo1....']).
pr(0020-88, ['Porque estudiar esta matematica?'], ['Desarrollar su madurez matematica (habilidad para entender y crear argumentos matematicos) o porque es la materia que te permite ver y entender materias mas avanzadas en tu carrera'], 20/20, ['Basado en eisc.univalle.edu.co/.../Matematicas_Discretas_1/.../DiscretasI_capitulo1....']).
pr(0020-89, ['ejercicio de logica facil'], ['Si salgo de mi casa todos los dias a las 6:30 y llego a clases a las 7:01 pero manana tengo una evaluacion a las 7 y no puedo llegar, devo salir antes de las 6:30?'], 0/20, ['Juancarlos Salcedo 0020']).
pr(0020-90, ['Respuesta al ejercicio'], ['Si se necesita llegar a las 7 en punto es logico que deberia salir de su casa =< 6:29 para alcanzar llegar maximo a las 7:00'], 20/20, ['Juancarlos Salcedo 0020']).
pr(0020-91, ['Una persona tiene 6 chaquetas y 10 pantalones. De cuantas formas distintas puede combinar estas prendas?.'], ['60'], 20/20, ['www.fing.edu.uy/tecnoinf/mvd/cursos/pye/materiales/.../pye-pr02.pdf']).
pr(0020-92, ['Un entrenador dispone de 22 jugadores para formar un equipo de futbol. Cuantas alineaciones de 11 jugadores puede hacer?'], ['Combinatoria de 11 en 22 C11/22= 705432'], 20/20,['www.fing.edu.uy/tecnoinf/mvd/cursos/pye/materiales/.../pye-pr02.pdf']). 
pr(0020-93, ['Cuantas jugadas diferentes se pueden obtener si se sacan cinco cartas de una baraja de 40 cartas?.'], ['Combinatoria 5 en 40 C5/40=658008'], 20/20, ['www.fing.edu.uy/tecnoinf/mvd/cursos/pye/materiales/.../pye-pr02.pdf']). 
pr(0020-94, ['El alfabeto Morse utiliza los signos . y -. Utilizando como maximo cuatro de estos signos, cuantas secuencias distintas puedes formar?'], ['V1en2 + VR2en2 + VR3en2 + VR4en2 = 30'], 20/20, ['www.fing.edu.uy/tecnoinf/mvd/cursos/pye/materiales/.../pye-pr02.pdf']).
pr(0020-95, ['Ejercicio extra Combinatoria 1'], ['a)Cuantos numeros de 6 cifras puedes escribir con los digitos 1, 2 y 3?. b)Cuantos de ellos contienen todos los digitos 1, 2 y 3 al menos una vez?'], 0/20, ['www.fing.edu.uy/tecnoinf/mvd/cursos/pye/materiales/.../pye-pr02.pdf']).
pr(0020-96, ['Respuesta a ejercicio extra combinatoria 1'], ['a) VR6en3 = 729; b) VR6en3 - 3VR6en2 + 3 = 540'], 20/20, ['www.fing.edu.uy/tecnoinf/mvd/cursos/pye/materiales/.../pye-pr02.pdf']).
pr(0020-97, ['Ejercicio extra Combinatoria 2'], ['Para hacer una apuesta en la loteria primitiva hay que marcar con cruces seis numeros (donde figuran numeros del 1 al 49). De cuantas formas diferentes puede marcar una persona?.'], 0/20, ['www.fing.edu.uy/tecnoinf/mvd/cursos/pye/materiales/.../pye-pr02.pdf']).
pr(0020-98, ['Respuesta a ejercicio extra combinatoria 2'], ['13.983.816'], 20/20, ['www.fing.edu.uy/tecnoinf/mvd/cursos/pye/materiales/.../pye-pr02.pdf']).
pr(0020-99, ['Ocho amigos van de viaje llevando para ello dos coches. Si deciden ir 4 en cada coche. a) De cuantas formas pueden ir si todos tienen carnet de conducir? b)De cuantas formas pueden ir si solo tres tienen carnet de conducir?'], ['a) 40320; b) V2en6*P6=4320'], 20/20, ['www.fing.edu.uy/tecnoinf/mvd/cursos/pye/materiales/.../pye-pr02.pdf']).
pr(0020-100, ['Cuantas apuestas hay que rellenar en las quinielas de futbol para tener la seguridad de acertar seis resultados, aparte del complementario?.'], ['VR6en3 = 729'], 20/20, ['www.fing.edu.uy/tecnoinf/mvd/cursos/pye/materiales/.../pye-pr02.pdf']). 
































 

























 

 

 











 

































 



















 


 



