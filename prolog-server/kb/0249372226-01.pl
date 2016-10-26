/*Funcionamiento logico de un termocontacto:
 *
 * Un termocontacto es un dispositivo que abre o cierra un circuito
 * electrico una vez que ha alcanzado una temperatura determinada.
 *
 * Se plantea describir el funcionamiento logico de un termocontacto
 * cuando alcanza una temperatura determinada, usando para ello el
 * lenguaje de programacion Prolog. Los valores constantes de las
 * temperaturas seran 60°C y 80°C.
 */

abreCircuito(T):-T<60, write("Circuito abierto").
cierraCircuito(T):-T>80, write("Circuito cerrado").




