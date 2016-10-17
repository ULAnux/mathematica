% buscador.pl  version alfa 0.2 2016-10-15
% This program is free software as the rest of ULAnix Mathematica
% Especificación:
% Sea B = {(Preg, Resp)| pr(_,Preg, Resp, _,_)}, donde pr/5 es un predicado en la base
% de conocimiento de Mathematica. Preg, a su vez, es un conjunto de palabras, cada una
% de las cuales pertenece al conjunto L. El usuario de Mathematica hace una consulta, C,
% que tambien es un conjunto de palabras en L. Defina,  a partir de B y L y cualquier
% funcion o relacion que considere apropiada, el conjunto, S, que se le presentara
% al usuario como solucion a su C. Incluya una definicion para esa funcion o relacion
% usada en la definicion anterior. Explique con un ejemplo sencillo.
% Solución:
% S = {Resp|(Preg, Resp) pertenece a B y Preg es similar a C}
% X es similar a Y si (X contiene a Y o Y contiene a X) y sus tamaños son casi los mismos

:- [lexer].

buscar_resp(Consulta, Respuestas) :-
  atom_codes(Consulta, ConsultaP),
  tokenizar_pregunta(ConsultaP, C),
  recuperar(C, Respuestas).

recuperar(C,Respuestas) :-
  filtrar(C, Descriptores),
  findall(R, similar(Descriptores, R), Respuestas).

similar(Consulta, Respuesta) :-
  clause(pr(_, Pregunta, Respuesta, _, _), _Body),
  ( contenida_en(Consulta, Pregunta) ;
    contenida_en(Pregunta, Consulta) ).

falta_algun(Lista1, Lista2) :-
  en(X, Lista1),
  not(en(X, Lista2)).

contenida_en(Lista1, Lista2) :-
  not(falta_algun(Lista1, Lista2)).

en(E, C) :- member(E, C).
en(E, C) :- subcadena(E, C).

subcadena(_P, []) :- false.
subcadena(P, [C|_Rest] ) :-  atom(C), atom(P),
  sub_atom(C, _, _, _, P).
subcadena(P, [_|Rest] ) :- subcadena(P, Rest).

% test

prueba_filtro :- filtrar([a, que, b], [a, b]).

filtrar([], []).
filtrar([P|R], RR) :-
  lista_negra(ListaNegra), member(P, ListaNegra), filtrar(R, RR).
filtrar([P|R], [P|RR]) :-  filtrar(R, RR).

lista_negra([que, de, qué, cuáles, cuál, cómo, es, el, la, los, las]).

tokenizar_pregunta(P, Pr) :- lex(Pr, P, []).

% tests
test1 :- buscar_resp('de que color es el caballo de Simón', [[blanco]]) .
