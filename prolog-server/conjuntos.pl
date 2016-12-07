% conjuntos.pl
% parte de http://nux.ula.ve/mathematica/
%
% programas lógicos para procesar conjuntos
% basados en propuestas del profesor Ivan Bratko
% http://webdelprofesor.ula.ve/ingenieria/jacinto/logica/manual-prolog/conjuntos-prolog.html
% adaptaciones por Jacinto Dávila


lista([]).
lista([_|_]).
 
ad(X,Y) :- var(X);var(Y).
ad(X,Y) :- nonvar(X),nonvar(Y),X<Y.

union([],S,S).
union(S,[],S) :- S\=[].
union([X|TX],[X|TY],[X|TZ]) :-
  union(TX,TY,TZ).
union([X|TX],[Y|TY],[X|TZ]) :-
   ad(X,Y),
   union(TX,[Y|TY],TZ).
union([X|TX],[Y|TY],[Y|TZ]) :-
   ad(Y,X),
   union([X|TX],TY,TZ).
 
interseccion([],_,[]).
interseccion(S,[],[]) :- S\=[].
interseccion([X|TX],[X|TY],[X|TZ]) :-
   interseccion(TX,TY,TZ).
interseccion([X|TX],[Y|TY],TZ) :-
   ad(X,Y),
   interseccion(TX,[Y|TY],TZ).
interseccion([X|TX],[Y|TY],TZ) :-
   ad(Y,X),
   interseccion([X|TX],TY,TZ).
 
diferencia([],_,[]).
diferencia(S,[],S) :- S\=[].
diferencia([X|TX],[X|TY],TZ) :-
   diferencia(TX,TY,TZ).
diferencia([X|TX],[Y|TY],[X|TZ]) :-
   ad(X,Y),
   diferencia(TX,[Y|TY],TZ).
diferencia([X|TX],[Y|TY],TZ) :-
   ad(Y,X),
   diferencia([X|TX],TY,TZ).

% ?-seleccionar([1,2,3,4],X, X>2,Resultado).
seleccionar([],_,_,[]).
seleccionar([H|T],X,Cond,Sel) :-
	duplicate_term(X-Cond, XC-CondC),
	% copiar_term(X-Cond,XC-CondC),
	H=XC,
	(CondC -> Sel=[H|R] ; Sel=R),
	seleccionar(T,X,Cond,R).

subconjunto([],_).
subconjunto([H|T1],[H|T2]) :- subconjunto(T1,T2).
subconjunto([H1|T1],[H2|T2]) :-   ad(H2,H1),subconjunto([H1|T1],T2).
 
en(X,[X|_]).
en(X,[Y|T]) :- ad(Y,X),en(X,T).


% ?- S es_conjunto [1,2] \-/ [3,4].
% S = [1, 2, 3, 4] .

% ?- S es_conjunto [1,2] /-\ [3,4].
% S = [] .

% ?- S es_conjunto [1,2] \-/ [2,4].
% S = [1, 2, 4] .

% ?- S es_conjunto [1,2] /-\ [2,4].
% S = [2] .

:- op(400,yfx,/-\). % interseccion
:- op(500,yfx,\-/). % union
:- op(600,yfx,\). % diferencia
:- op(700,xfx,es_conjunto).
:- op(700,xfx,pertenece).
:- op(700,xfx,es_subconjunto).
:- op(700,xfx,c). 

S es_conjunto S1 \-/ S2  :-
   SS1 es_conjunto S1,
   SS2 es_conjunto S2,
   union(SS1,SS2,S).
 
S es_conjunto S1 /-\ S2  :-
   SS1 es_conjunto S1,
   SS2 es_conjunto S2,
   interseccion(SS1,SS2,S).
 
S es_conjunto S1 \ S2  :-
   SS1 es_conjunto S1,
   SS2 es_conjunto S2,
   diferencia(SS1,SS2,S).
 
S es_conjunto sel(X,Cond,Set) :-
   SSet es_conjunto Set,
   seleccionar(SSet,X,Cond,S).
 
S es_conjunto S :- lista(S).

X pertenece S  :-  SS es_conjunto S, en(X,SS).
 
U es_subconjunto V :-  
	US es_conjunto U, VS es_conjunto V, subconjunto(US,VS).

% ?- [1,2,3] /-\ [2,3,4] es_subconjunto [1,2,3] \-/ [2,3,4].
% ?- S es_conjunto ([1,2,3] \ [2,4,5] /-\ [2,6,7])\-/[2,3,6].
% ?- X is_in [1,2,3] \-/ [3,4,5].

:- op(100,xfx,'...').

c_en(X,[X|_]) :- X\=_..._.
c_en(X,[A...B|_]) :- en_intervalo(X,A,B).
c_en(X,[Y|T]) :- Y\=_..._,ad(Y,X),c_en(X,T).
c_en(X,[_...B|T]) :- ad(B,X),c_en(X,T).
 
en_intervalo(X,X,_).
en_intervalo(X,_,B) :- nonvar(X),X=B.
en_intervalo(X,A,B) :- nonvar(X),ad(A,X),ad(X,B).
en_intervalo(X,A,B) :- var(X),ad(A,B),A1 is A+1,en_intervalo(X,A1,B).

% conjunto de números pares entre 1 y 100.
% ?-sel([1...100], X, par(X), Resultado).
sel([],_,_,[]).
sel([H|T],X,Cond,Sel) :-
	H \= _..._, 
	seleccionar([H|T], X, Cond, Sel).
sel([H|T],X,Cond,Sel) :-
	H = A...B, 
	intermedios(A, B, Int),
	seleccionar(Int, X, Cond, Sel1),
	sel(T, X, Cond, Sel2),
	union(Sel1, Sel2, Sel). 

intermedios(A, A, []).
intermedios(A, B, [A|R]) :-
	AA is A + 1, 
	intermedios(AA, B, R). 

par(X) :- 0 is X mod 2. 

A c B :-
   union(A, _, B).

