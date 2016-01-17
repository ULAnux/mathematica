% buscador.pl  version alfa 0.1 2015-06-16 
% This program is free software as the rest of ULAnix Mathematica
% 

:- [lexer]. 

buscar_resp(Pregunta, Respuesta) :-
  atom_codes(Pregunta, Pregunta_C), 
  tokenizar_pregunta(Pregunta_C, Pr),
  recuperar(Pr, Respuesta).

recuperar(P,Respuestas) :-
  filtrar(P, Pf),
  findall(R, contiene(Pf, R), Respuestas).

contiene(Preg, Respuesta) :-
  clause(pr(_, Pregunta, Respuesta, _, _), _Body), 
  contenida_en(Preg, Pregunta). 

contenida_en([], _) :- false. 
contenida_en([Palabra], Pregunta) :- en(Palabra, Pregunta).
contenida_en([P|R], Pregunta) :- en(P, Pregunta), contenida_en(R, Pregunta). 

en(P, Preg) :- member(P, Preg).
en(P, Preg) :- subcadena(P, Preg).

subcadena(_P, []) :- false. 
subcadena(P, [C|_Rest] ) :- atom(C), sub_atom(C, _, _, _, P).
subcadena(P, [_|Rest] ) :- subcadena(P, Rest). 

% test

prueba_filtro :- filtrar([a, que, b], [a, b]). 

filtrar([], []).
filtrar([P|R], RR) :- 
  lista_negra(ListaNegra), member(P, ListaNegra), filtrar(R, RR). 
filtrar([P|R], [P|RR]) :-  filtrar(R, RR).

lista_negra([que]). 

tokenizar_pregunta(P, Pr) :- lex(Pr, P, []). 

% ?prueba_buscar(['Union de dos Conjuntos A , B'], ['La union de dos conjuntos A , B se representa como todos los elementos pertenecientes tanto al conjunto A como al conjunto B}.']). 

%pr(00010-23, ['Union de dos Conjuntos A , B'], ['La union de dos conjuntos A , B se representa como todos los elementos pertenecientes tanto al conjunto A como al conjunto B}.'], 20/20,'Alex Romero').



