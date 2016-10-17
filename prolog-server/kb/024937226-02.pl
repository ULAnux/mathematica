%Angel España, CI V-24.937.226.
%Ejemplo de un código que resuelve una ecuación de primer grado.


ecuacion(A, _, _, _):- A =\= 0.
ecuacion(A, B, C, X):- X is (C - B)/A.


pr(_, ['Dada la ecuación de primer grado: aX + b = c, con a=',A,'b=',B,'y c=',C,' el valor de la variable, X ='], [Z], _, ['Angel España']):- ecuacion(A, B, C, Z).
