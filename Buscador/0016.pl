pr(26, [numero, variables, proposicion, atomica], [una], 20/20, ['Andres de J. Pinto V']).

pr(26, [proposicion, molecular, compuesta, de], ['proposiciones atomicas', 'conexiones'], 20/20, ['Andres de J. Pinto V']).

pr(26, [proposicion, condicional, a, and, b], [falso], 20/20, ['Andres de J. Pinto V']).

pr(26, [proposicion, condicional, a, :-, b], [verdadero], 20/20, ['Andres de J. Pinto V']).


%Andres_de_J_Pinto_V

argumento_inductivo(A,B,C	):-
%Sean_A_B_y_C_numeros_reales
pr(26,[A, =, C, and, B, =, C], [implica, A, =, B], 20/20, ['Andres de J. Pinto V.']),
rp(26,[implica, A, =,B], [resultado, de, multiplicar, por, B, en, la, igualdad, anterior],_, ['Andres de J. Pinto V.']),
pr(26,[resultado, de, multiplicar, por, A, en, la, igualdad, anterior], [A*B, =, B^2], 20/20, ['Andres de J. Pinto V.']),
rp(26,[A*B, =, B^2], [resultado, de, restar, A^2, en, la, igualdad, anterior],_, ['Andres de J. Pinto V.']),
pr(26,[resultado, de, restar, A^2, en, la, igualdad, anterior], [A*B - A^2, =, B^2 - A^2], 20/20, ['Andres de J. Pinto V.']),
rp(26,[A*B - A^2, =, B^2 - A^2], [resultado, de, factorizar, la, igualdad, anterior],_, ['Andres de J. Pinto V.']),
pr(26,[resultado, de, factorizar, la, igualdad, anterior], [A*(B-A), =, (B+A)*(B-A)], 20/20, ['Andres de J. Pinto V.']),
rp(26,[A*(B-A), =, (B+A)*(B-A)], [resultado, de, dividir, entre, B-A, la, igualdad, anterior],_, ['Andres de J. Pinto V.']),
pr(26,[resultado, de, dividir, entre, B-A, la, igualdad, anterior], [A, =, B+A], 20/20, ['Andres de J. Pinto V.']),
rp(26,[A, =, B+A], [usando,hipotesis, de, A, =, B, reemplazando, A, por, B, en, igualdad, anterior, '¿quedaria?'],_,['Andres de J. Pinto V.']),
pr(26,[usando,hipotesis, de, A, =, B, reemplazando, A, por, B, en, igualdad, anterior, '¿quedaria?'],[B, =, B+B, =, 2*B], 20/20,['Andres de J. Pinto V.']),
rp(26,[B, =, B+B, =, 2*B], [resultado, de, dividir, entre, B, la, igualdad, anterior],_,['Andres de J. Pinto V.']),
pr(26,[resultado, de, dividir, entre, B, la, igualdad, anterior], [1, =, 2], 20/20, ['Andres de J. Pinto V.']),
rp(26,[1,=,2], [donde,esta, el, error],_,['Andres de J. Pinto V.']),
pr(26,[donde, esta, el, error], [no, se, puede, dividir, por, (B-A), pues, si, (B, =, A), seria, division, por, cero ],100/100, ['Andres de J. Pinto V.']).



