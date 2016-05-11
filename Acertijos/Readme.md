Juego 2048 

El juego 2048 consiste en un rompecabezas de deslizamiento, cuyo objetivo es deslizar baldosas, con números a partir del 2, 
en una cuadrícula para combinarlas y crear una baldosa con el número 2048.

Con esta implementación en prolog el usuario puede jugar el mismo, o mirar como la PC trata de resolver el juego.

Para jugar se debe ejecutar: 

?- play.

En pantalla aparecerá la tabla inicial, algo como

    _    _    2    _ 
    _    _    2    _ 
    _    _    _    _ 
    _    _    _    _ 

Para comenar a deslizar y combiar los números utliza:

Izquirda: a, Abajo: s, Arriba: w, derecha: d

También sirven las teclas:

Izquierda h, Abajo: j, Arriba: k, derecha: i.

Para mostrar la tabla utilizar la tecla: b,
Para salir: q,
Para mostrar la ayuda: ?


PC vs PC

Para ver como la PC trata de resolver el juego, se ejecuta:

?- ai.
De esta manera la pc calcula todos los posibles movimientos y resuelve el juego
También se puede cambiar la profundidad de búsqueda ejecutando:

?- ai(3).
El número de posibles jugadas es muy grande , por lo que el aumento de la profundidad de la búsqueda más allá de un cierto nivel , probablemente hará que funcione lentamente . Usando una profundidad de búsqueda igual a 3 , se ejecuta muy rápido.


