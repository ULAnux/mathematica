%
pr(0003-1, [que, es, 'tautología'], ['Es una proposición compuesta que es verdadera para todas las asignaciones de valores.'], 20/20, ['Carlos Santiago']).

%Carlos Santiago
%C.I. 20.433.144

%Tabla de verdad de la Bicondicional de dos Proposiciones: es verdadera cuando las Proposiciones p,q tienen el mismo valor de verdad, y falsa en los demas casos
pr(0003-1, ['p = F', and, 'q = F', 'p <-> q', '='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-2, ['p = F', and, 'q = V', 'p <-> q', '='], ['F'], 20/20, ['Carlos Santiago']).
pr(0003-3, ['p = V', and, 'q = F', 'p <-> q', '='], ['F'], 20/20, ['Carlos Santiago']).
pr(0003-4, ['p = V', and, 'q = V', 'p <-> q', '='], ['V'], 20/20, ['Carlos Santiago']).

%la siguiente es una tabla de verdad para una proposición compuesta formada a partir de 3 Proposiciones primitivas o simples
%en notacion simbolica esta proposición se escribe como 'q ^ (¬r -> q)', donde p,q y r representan las Proposiciones primitivas
%se obtienen valores de verdad recurriendo al hecho de que la conjuncion de dos proposiciones es verdadera si y solo si ambas proposiciones son verdaderas...
%... una de las proposiciones es una implicacion '(la implicacion ¬r -> q)' es definitivamente una proposición compuesta y no una primitiva
pr(0003-5, ['p = F', and, 'q = F', and, 'r = F', 'q ^ (¬r -> q)','='], ['F'], 20/20, ['Carlos Santiago']).
pr(0003-6, ['p = F', and, 'q = F', and, 'r = V', 'q ^ (¬r -> q)','='], ['F'], 20/20, ['Carlos Santiago']).
pr(0003-7, ['p = F', and, 'q = V', and, 'r = F', 'q ^ (¬r -> q)','='], ['F'], 20/20, ['Carlos Santiago']).
pr(0003-8, ['p = F', and, 'q = V', and, 'r = V', 'q ^ (¬r -> q)','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-9, ['p = V', and, 'q = F', and, 'r = F', 'q ^ (¬r -> q)','='], ['F'], 20/20, ['Carlos Santiago']).
pr(0003-10, ['p = F', and, 'q = F', and, 'r = V', 'q ^ (¬r -> q)','='], ['F'], 20/20, ['Carlos Santiago']).
pr(0003-11, ['p = V', and, 'q = V', and, 'r = F', 'q ^ (¬r -> q)','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = V', and, 'q = V', and, 'r = V', 'q ^ (¬r -> q)','='], ['V'], 20/20, ['Carlos Santiago']).

%considerando la siguiente tabla, el resultado muestra que para cualesquiera proposiciones primitivas 'p,r,s' la implicacion '[p^((p^r)->s) -> (r->s)]' es una tautología
pr(0003-12, ['p = F', and, 'r = F', and, 's = F', '[p ^ ( (p ^r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = F', and, 'r = F', and, 's = V', '[p ^ ( (p ^ r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = F', and, 'r = V', and, 's = F', '[p ^ ( (p ^ r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = F', and, 'r = V', and, 's = V', '[p ^ ((p  ^r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = V', and, 'r = F', and, 's = F', '[p ^ ((p ^ r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = V', and, 'r = F', and, 's = V', '[p ^ ((p ^ r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = V', and, 'r = V', and, 's = F', '[p ^ ((p ^ r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = V', and, 'r = V', and, 's = V', '[p ^ ((p ^ r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).

%considerando la siguiente tabla, el resultado muestra que para cualesquiera proposiciones primitivas 'p,r,s' la implicacion '[p^((p^r)->s) -> (r->s)]' es una tautología
pr(0003-12, ['p = F', and, 'r = F', and, 's = F', '[p ^ ( (p ^r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = F', and, 'r = F', and, 's = V', '[p ^ ( (p ^ r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = F', and, 'r = V', and, 's = F', '[p ^ ( (p ^ r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = F', and, 'r = V', and, 's = V', '[p ^ ((p  ^r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = V', and, 'r = F', and, 's = F', '[p ^ ((p ^ r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = V', and, 'r = F', and, 's = V', '[p ^ ((p ^ r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = V', and, 'r = V', and, 's = F', '[p ^ ((p ^ r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = V', and, 'r = V', and, 's = V', '[p ^ ((p ^ r) ->s) -> (r->s)]','='], ['V'], 20/20, ['Carlos Santiago']).

%INICIO
%las tablas que acontinuacion se muestran revelan que las proposiciones '(p ^ q) -> r' y 'p -> (q->r)' son logicamente equivalentes
%tabla de '(p ^ q) -> r'
pr(0003-1, ['p = F', and, 'q = F', and, 'r = F', '(p ^ q) -> r','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-2, ['p = F', and, 'q = F', and, 'r = V', '(p ^ q) -> r','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-3, ['p = F', and, 'q = V', and, 'r = F', '(p ^ q) -> r','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-4, ['p = F', and, 'q = V', and, 'r = V', '(p ^ q) -> r','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-5, ['p = V', and, 'q = F', and, 'r = F', '(p ^ q) -> r','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-6, ['p = V', and, 'q = F', and, 'r = V', '(p ^ q) -> r','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-7, ['p = V', and, 'q = V', and, 'r = F', '(p ^ q) -> r','='], ['F'], 20/20, ['Carlos Santiago']).
pr(0003-8, ['p = V', and, 'q = V', and, 'r = V', '(p ^ q) -> r','='], ['V'], 20/20, ['Carlos Santiago']).

%tabla de 'p -> (q->r)'
pr(0003-9, ['p = F', and, 'q = F', and, 'r = F', 'p -> (q->r)','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-10, ['p = F', and, 'q = F', and, 'r = V', 'p -> (q->r)','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-11, ['p = F', and, 'q = V', and, 'r = F', 'p -> (q->r)','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-12, ['p = F', and, 'q = V', and, 'r = V', 'p -> (q->r)','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-13, ['p = V', and, 'q = F', and, 'r = F', 'p -> (q->r)','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-14, ['p = V', and, 'q = F', and, 'r = V', 'p -> (q->r)','='], ['V'], 20/20, ['Carlos Santiago']).
pr(0003-15, ['p = V', and, 'q = V', and, 'r = F', 'p -> (q->r)','='], ['F'], 20/20, ['Carlos Santiago']).
pr(0003-16, ['p = V', and, 'q = V', and, 'r = V', 'p -> (q->r)','='], ['V'], 20/20, ['Carlos Santiago']).
%se demuestra que '(p ^ q) -> r' y 'p -> (q->r)' son logicamente equivalentes 

%
pr(0003-2, [verdad, or,verdad], [verdad],20/20, ['Carlos Santiago']).
pr(0003-3, [verdad, or, falso], [verdad],20/20, ['Carlos Santiago']).
pr(0003-4, [falso, or, verdad], [verdad],20/20, ['Carlos Santiago']).
pr(0003-5, [falso, or, falso], [falso],20/20, ['Carlos Santiago']).
pr(0003-6, [verdad, implica,verdad], [verdad],20/20, ['Carlos Santiago']).
pr(0003-7, [verdad, implica, falso], [falso],20/20, ['Carlos Santiago']).
pr(0003-8, [falso, implica, verdad], [verdad],20/20, ['Carlos Santiago']).
pr(0003-9, [falso, implica, falso], [verdad],20/20, ['Carlos Santiago']).


