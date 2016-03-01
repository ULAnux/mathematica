%pr(0013-1,['Dos','conjuntos','se','dicen','iguales','si','tienen','los','mismos','elementos.',([a,1],subconjunto_de,[1,a]),=],[[1,a],subconjunto_de,[a,1]],_,_).
pr(0013-1,['Dos','conjuntos','se','dicen','iguales','si','tienen','los','mismos','elementos.',(A,subconjunto_de,B),=],[C,subconjunto_de,D],20/20,'Beczabeth, Florez'):- A\= [],B\= [],C\= [],D\= [], A==D,B==C,(subset(A,B) , subset(C,D) ).

%pr(0013-2,['Union','de','dos','conjuntos',([a,b,m,n,p],unido_con,[a,b,s,t,p]),=],[R],_,_).
pr(0013-2,['Union','de','dos','conjuntos',(A,unido_con,B),=],[R],20/20,'Beczabeth, Florez'):- union(A,B,R).

%pr(0013-3,['La','interseccion','de','dos','conjuntos','es:',([a,b,m,n,p],intersectado_con,[a,b,s,t,p]),=],[R],_,_).
pr(0013-3,['La','interseccion','de','dos','conjuntos','es:',(A,intersectado_con,B),=],[R],20/20,'Beczabeth, Florez'):- intersection(A,B,R).

pr(0013-4,['Numeros','enteros','entre','1','y','5',=],['A',=,'{ x | 1 <= x <= 5 }'],20/20,'Beczabeth, Florez').

pr(0013-5,['Numeros fraccionarios entre -2/3 y 1',=],['A',=,'{ x | x = 1 ^ x = -2/3 }'],20/20,'Beczabeth, Florez').

%pr(0013-6,['Elementos que pertenece al conjunto:',(a,pertenece_al_conjunto,[a,d]),=],[R],_,_).
pr(0013-6,['Elementos que pertenece al conjunto:',(E,pertenece_al_conjunto,A),=],[R],20/20,'Beczabeth, Florez'):-  member(E,A), R = 'Si pertenece'.
