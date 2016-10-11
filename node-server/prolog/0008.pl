
pr(0008-1, ['p = V', y, 'q = V', 'p -> q', '='], ['V'], 20/20, ['Javier Solsona', 'Tomado de guía de logica de los profesores Carlos Domingo, Jacinto Dávila']).
pr(0008-2, ['p = V', y, 'q = F', 'p -> q', '='], ['F'], 20/20, ['Javier Solsona', 'Tomado de guía de logica de los profesores Carlos Domingo, Jacinto Dávila']).
pr(0008-3, ['p = F', y, 'q = V', 'p -> q', '='], ['V'], 20/20, ['Javier Solsona', 'Tomado de guía de logica de los profesores Carlos Domingo, Jacinto Dávila']).
pr(0008-4, ['p = F', y, 'q = F', 'p -> q', '='], ['V'], 20/20, ['Javier Solsona', 'Tomado de guía de logica de los profesores Carlos Domingo, Jacinto Dávila']).
pr(0008-5, ['p = V', y, 'q = V', '¬p o q', '='], ['V'], 20/20, ['Javier Solsona', 'Tomado de guía de logica de los profesores Carlos Domingo, Jacinto Dávila']).
pr(0008-6, ['p = V', y, 'q = F', '¬p o q', '='], ['F'], 20/20, ['Javier Solsona', 'Tomado de guía de logica de los profesores Carlos Domingo, Jacinto Dávila']).
pr(0008-7, ['p = F', y, 'q = V', 'p -> q', '='], ['V'], 20/20, ['Javier Solsona', 'Tomado de guía de logica de los profesores Carlos Domingo, Jacinto Dávila']).
pr(0008-8, ['p = F', y, 'q = F', 'p -> q', '='], ['V'], 20/20, ['Javier Solsona', 'Tomado de guía de logica de los profesores Carlos Domingo, Jacinto Dávila']).
%pr(0008-9, [ '(p -> q)', '<->', '(¬p o q)'] , ['Si'], 20/20, ['Javier Solsona', 'Tomado de guía de logica de los profesores Carlos Domingo']).

% Javier Solsona

leccion(conjuntos_1parte) :-
	pr(0008-1,['¿','Qué', 'es', 'un', 'conjunto','?'], ['Es', 'un', 'grupo', 'de', 'objetos', 'finitos', 'o', 'infinitos', 'que', 'se', 'relacionan', 'entre', 'si'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-1,['Es', 'un', 'grupo', 'de', 'objetos', 'finitos', 'o', 'infinitos', 'que', 'se', 'relacionan', 'entre', 'si'], ['¿','Como', 'definir', 'un', 'conjunto','?'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-2,['¿','Como', 'definir', 'un', 'conjunto','?'], ['La', 'forma', 'estandar', 'como', 'se', 'define', 'un', 'conjunto', 'es', 'con', 'un', 'identificador', 'del', 'conjunto', 'igualado', 'a', 'dos', 'llaves',  '{ }', 'dentro', 'de', 'las', 'llaves', 'se', 'escribe', 'los', 'elementos', 'del', 'conjunto.'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-2,['La', 'forma', 'estandar', 'de', 'definir', 'un', 'conjunto'], ['¿', 'Todos', 'los', 'conjuntos', 'se', 'pueden', 'definir', 'dentro', 'de', 'las', 'llaves', 'o', 'los', 'corchetes', 'caso', 'en', 'prolog', '?'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-3,['¿', 'Todos', 'los', 'conjuntos', 'pueden', 'definirse', 'dentro', 'de', 'llaves', 'o', 'corchetes','?'], ['Si', 'la', 'mejor', 'forma', 'de', 'hacerlo', 'es', 'intoduciendo', 'una', 'abreviación', 'del', 'conjunto', ',', 'ejemplo', 'de', 'todos', 'los', 'numeros', 'enteros',  'A = { x | x ∈ ℤ}'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-3, ['Si,', 'la', 'mejor', 'forma', 'de', 'hacerlo', 'es', 'intoduciendo', 'una', 'abreviación', 'del', 'conjunto'], ['¿', 'Qué', 'se', 'puede', 'definir', 'dentro', 'de', 'un', 'conjunto', '?'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-4,['¿', 'Qué', 'se', 'puede', 'definir', 'dentro', 'de', 'un', 'conjunto','?'], ['Números', ',', 'letras',',', 'símbolos',',', 'en', 'general', 'cualquier', 'objeto', 'cuando', 'lo', 'definimos', 'en', 'papel',',', 'en', 'un', 'ordenador', 'debemos', 'utilizar', 'conjuntos', 'y', 'sintaxsis', 'que', 'sean', 'entendibles', 'para', 'el', 'compilador', 'que', 'estemos', 'usando'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-4,['Números','letras', 'símbolos', 'en', 'general', 'cualquier', 'objeto', 'cuando', 'lo', 'definimod', 'en', 'papel', ',', 'en', 'un', 'ordenador', 'debemos', 'utilizar', 'conjuntos', 'y', 'sintaxsis', 'que', 'sean', 'entendibles', 'para', 'el', 'compilador', 'que', 'estemos', 'usando' ],['Los', 'conjuntos', 'deben', 'estar', 'delimitados'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-5,['Los', 'conjuntos', 'deben', 'estar', 'delimitados'], ['Esto', 'es', 'porque', 'de', 'no', 'ser', 'asi', 'el', 'conjunto', 'contendria', 'todo', 'el', 'universo',',', 'existe', 'un', 'conjunto', 'universal', 'el', 'cual', 'contiene', 'todos', 'los', 'conjuntos', 'este', 'se', 'denota', 'con', 'E', 'y', 'existe', 'el', 'conjunto', 'vacio', 'el', 'cual', 'no', 'contiene', 'nada', 'este', 'se', 'denota', 'con', '', 'o', 'con', 'E(tilde)'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-5,['Esto', 'es', 'porque', 'de', 'no', 'ser', 'asi', 'el', 'conjunto', 'contendria', 'todo', 'el', 'universo,', 'existe', 'un', 'conjunto', 'universal', 'el', 'cual', 'contiene', 'todos', 'los', 'conjuntos', 'este', 'se', 'denota', 'con', 'E', 'y', 'existe', 'el', 'conjunto', 'vacio', 'el', 'cual', 'no', 'contiene', 'nada', 'este', 'se', 'denota', 'con', '', 'o', 'con', 'E(tilde)'],['¿', 'Todo', 'conjunto', 'tiene', 'un', 'complemento', '?'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-6,['¿', 'Todo', 'conjunto', 'tiene', 'un', 'complemento', '?'], ['Si', 'este', 'se', 'define', 'como', 'el', 'identificador', 'del', 'conjunto', 'con', 'una', 'tilde', 'al', 'lado'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-6,['Si', 'este', 'se', 'define', 'como', 'el', 'identificador', 'del', 'conjunto', 'con', 'una', 'tilde', 'al', 'lado'], ['¿', 'Cuál', 'es', 'el', 'complemento', 'del', 'conjunto', 'universal', 'E', 'y', 'del', 'conjunto', 'B={x / x>7 y x ∈ ℕ}', 'respectivamente?'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-7,['¿', 'Cuál', 'es', 'el', 'complemento', 'del', 'conjunto', 'universal', 'E', 'y', 'del', 'conjunto', 'B={x / x>7 y x ∈ ℕ}', 'respectivamente?'], ['El', 'complemento', 'de', 'E', 'es', 'el', 'conjunto', 'vacio', '', 'y', 'el', 'complemento', 'de', 'B', 'es', 'B(tilde)={0,1,2,3,4,5,6}'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-7, ['El', 'complemento', 'de', 'E', 'es', 'el', 'conjunto', 'vacio', '', 'y', 'el', 'complemento', 'de', 'B', 'es', 'B(tilde)={0,1,2,3,4,5,6}'], ['¿', 'Un', 'conjunto', 'puede', 'estar', 'dentro', 'de', 'otro',  'conjunto','?'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-8,['¿', 'Un', 'conjunto', 'puede', 'estar', 'dentro', 'de', 'otro',  'conjunto','?'], ['Si', 'a', 'esto', 'se', 'le', 'llama', 'un', 'subconjunto'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-8,['Si', 'a', 'esto', 'se', 'le', 'llama', 'un', 'subconjunto'], ['¿','Cuando', 'un', 'conjunto', 'esta', 'dentro', 'de', 'otro', '?'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-9,['¿','Cuando', 'un', 'conjunto', 'esta', 'dentro', 'de', 'otro', '?'], ['Cuando', 'todos', 'sus', 'elementos', 'estan', 'en', 'el', 'conjunto', 'que', 'los', 'contiene', 'se', 'define', 'con', 'el', 'símbolo', '⊂'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-9,['Cuando', 'todos', 'sus', 'elementos', 'estan', 'en', 'el', 'conjunto', 'que', 'los', 'contiene', 'se', 'define', 'con', 'el', 'símbolo', '⊂'], ['Definición', 'matemática'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-10,['Definición', 'matemática'], ['Decimos', 'que', 'B ⊂ A <->(x ∈ B -> x ∈ A)'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-10, ['Decimos', 'que', 'B ⊂ A <->(x ∈ B -> x ∈ A)'], ['Si', 'A={x | 0 <= x <= 10 y x ∈ ℕ}', 'y', 'B={z | 0 <= z <= 5 y z ∈ ℕ}', 'B ⊂ A','?'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-11, ['Si', 'A={x / 0 <= x <= 10 y x ∈ ℕ}', 'y', 'B={z | 0 <= z <= 5 y z ∈ ℕ}', 'B ⊂ A','?'], ['Si'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-11, ['Si'], ['Cuando', 'A ⊂ B', 'y', 'B ⊂ A', 'entones','?'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-12, ['Cuando', 'A ⊂ B', 'y', 'B ⊂ A', 'entones','?'], ['A', 'es', 'identico', 'a', 'B'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-12, ['A', 'es', 'identico', 'a', 'B'], ['¿', 'Qué', 'operaciones', 'podemos', 'hacer', 'con', 'los', 'conjuntos', '?'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-13, ['¿', 'Qué', 'operaciones', 'podemos', 'hacer', 'con', 'los', 'conjuntos', '?'], ['Unión', '(U)', 'intersección', '(∩)', 'y', 'diferencia', '(-)'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-13, ['Unión', 'intersección', 'y', 'diferencia'], ['Unión', 'de', 'dos', 'conjuntos'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-14, ['Unión', 'de', 'dos', 'conjuntos'], ['Son', 'todos', 'los', 'elementos', 'que', 'estan', 'en', 'A', 'o', 'B', 'o', 'en', 'ambos', 'conjuntos'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-14, ['Son', 'todos', 'los', 'elementos', 'que', 'estan', 'en', 'A', 'o', 'B', 'o', 'en', 'ambos', 'conjuntos'], ['A={x | 0 <= x <= 10 y x ∈ ℕ}', 'U', 'B={z | 5 <= z <= 20 y z ∈ ℕ}'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-15, ['A={x/ 0 <= x <= 10 y x ∈ ℕ}', 'U', 'B={z | 5 <= z <= 20 y z ∈ ℕ}'], ['A U B = {k | 0<= k <= 20 y k ∈ ℕ}'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-15,['A U B = {k | 0<= k <= 20 y k ∈ ℕ}'], ['Intersección', 'de', 'dos', 'conjuntos'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-16, ['Intersección', 'de', 'dos', 'conjuntos'], ['Son', 'todos', 'los', 'elementos', 'que', 'estan', 'en', 'ambos', 'conjuntos'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-16, ['Son', 'todos', 'los', 'elementos', 'que', 'estan', 'en', 'ambos', 'conjuntos'], ['A={x/ 0 <= x <= 10 y x ∈ ℕ}', 'U', 'B={z / 5 <= z <= 20 y z ∈ ℕ}'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-17, ['A={x| 0 <= x <= 10 y x ∈ ℕ}', '∩', 'B={z | 5 <= z <= 20 y z ∈ ℕ}'], ['A ∩ B = {5,6,7,8,9,10}'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-17,['A ∩ B = {5,6,7,8,9,10}'], ['Diferencia', 'entre', 'dos', 'conjuntos'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-18, ['Diferencia', 'entre', 'dos', 'conjuntos'], ['Son', 'todos', 'los', 'elementos', 'que', 'estan', 'en', 'el', 'primer', 'conjunto', 'que', 'no', 'estan', 'en', 'el', 'segundo'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	rp(0008-18,['Son', 'todos', 'los', 'elementos', 'que', 'estan', 'en', 'el', 'primer', 'conjunto', 'que', 'no', 'estan', 'en', 'el', 'segundo'], ['A={x| 0 <= x <= 10 y x ∈ ℕ}', '-', 'B={z | 5 <= z <= 20 y z ∈ ℕ}'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']),

	pr(0008-19, ['A={x| 0 <= x <= 10 y x ∈ ℕ}', '-', 'B={z | 5 <= z <= 20 y z ∈ ℕ}'], ['A - B = {0,1,2,3,4}'], ['Javier Solsona', 'Tomado de guía de conjuntos del profesor Carlos Domingo']). 


%estructuras algebraicas teoria

leccion(estructuras_algebraicas_teoria) :-

	pr(0008-1,['¿','Cuáles', 'son', 'las', 'estructuras', 'algebraicas', '?'], ['Grupo', ',', 'Grupo comutativo o abeliano', ',', 'Anillo', ',', 'Anillo con unidad', ',', 'Anillo conmutativo', ',', 'Dominio de integridad', ',', 'Cuerpo','.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

	pr(0008-2,['¿','Qué', 'es', 'un', 'Grupo','?'], ['Es', 'un', 'conjunto', 'cerrado', 'respecto', 'de', 'una', 'operación', 'asociativa', 'con', 'cero', 'e', 'inverso.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

% pr(0008-3,['¿' 'Cuáles', 'son', 'las', 'caracteristicas', 'a', 'las', 'que', 'se', 'refiere', 'el', 'concepto', 'de', 'grupo', '?'], ['1)','Si', 'a ∈ G', 'y', 'b ∈ G', 'entonces', 'a (+) b ∈ G', '2)', '(a (+) b) (+) c', '=', 'a (+) (b (+) c)', '3)', 'Existe', 'un', 'e ∈ G', 'tal', 'que', 'para', 'todo', 'a ∈ G', 'es', 'a (+) e', '=', 'e (+) a', '=', 'a', '4)', 'Dado', 'a ∈ G', 'existe', 'un', 'a(tilde) ∈ G', 'tal', 'que', 'a (+) a(tilde)', '=', 'e', 'Nota', 'el', '( operador )', 'no', 'tiene', 'porque', 'referirse', 'a', 'la', 'operación', 'que', 'estamos', 'acostrumbrados',  'en', 'los', 'números','reales', 'sino', 'que', 'puede', 'ser', 'redefinida', 'en', 'todas', 'las', 'preguntas', 'de', 'esta', 'lección.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

	pr(0008-4,['¿', 'Qué', 'es', 'un', 'grupo conmutativo o abeliano','?'], ['Es', 'un', 'grupo','que', 'cumple','con', 'la', 'condición', 'adicional', 'de', 'que', 'la', 'operación', '(+)', 'es', 'conmutativa,', 'es', 'decir:', 'a (+) b', '=', 'b (+) a.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),


	pr(0008-5,['¿','Qué', 'es', 'un', 'anillo','?'], ['Es', 'un', 'grupo', 'cerrado', 'respecto', 'de', '2', 'operaciones', '(+)', 'y', '(x)', 'que', 'es', 'un', 'grupo', 'abeliano', 'respecto', 'de', '(+)', 'y', 'tal', 'que', 'la', '(x)', 'es', 'asociativa', 'y', 'distributiva', 'respecto', 'de', '(+).'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),


	pr(0008-6,['¿', 'Cuáles', 'son', 'las', 'caracteristicas', 'a', 'las', 'que', 'se', 'refiere', 'el', 'concepto', 'de', 'un', 'anillo', '?'], ['Aqui a,b,c ∈ A', '1)', 'a (+) b ∈ A;', '(a (+) b) (+) c', '=', 'a (+) (b (+) c);', 'existe', 'e | a (+) e', '=', 'e (+) a', '=', 'a;', 'existe', 'a(tilde) | a (+) a(tilde)', '=', 'e;', 'a (+) b', '=', 'b (+) a', '2)', 'a (*) b ∈ A;', '(a (*) b) (*) c', '=', 'a (*) (b (*) c)', '3)', '(a (+) b) (*) c', '=', '(a (*) c) (+) (b (*) c);', 'a (*) (b (+) c)', '=', '(a (*) b) (+) (a (*) c).'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

	pr(0008-7,['¿','Qué', 'es', 'un', 'anillo','con', 'unidad', '?'], ['El', 'anillo', 'se', 'llama', 'con', 'unidad', 'si', 'existe', 'un', 'elemento', 'u', 'tal', 'que:', 'a (x) u', '=', 'u (x) a', '=', 'a', 'para', 'todo', 'a ∈ A.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),
 
	pr(0008-8,['¿','Qué', 'es', 'un', 'anillo','comutativo', '?'], ['El', 'anillo', 'es', 'conmutativo', 'si', 'a (x) b', '=', 'b (x) a.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

	pr(0008-9,['¿','Qué', 'es', 'un', 'dominio','de', 'integridad', '?'], ['Es', 'un', 'anillo', 'de', 'conmutación', 'con', 'unidad.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

	pr(0008-10,['¿', 'Cuál', 'es', 'la', 'caracteristica', 'a', 'la', 'que', 'se', 'refiere', 'el', 'concepto', 'de', 'dominio', 'de', 'integridad', '?'], ['Si', 'a,b,c ∈ a D', 'entonces', 'c (x) a', '=', 'c (x) b', '->', 'a', '=', 'b', '(multiplicación).', 'Esta', 'propiedad', 'equivale', 'a', 'decir', 'que:', 'r (x) s', '=', '0', '->', 'r', '=', '0', 'para', 'todo', 's.' ], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

	pr(0008-11, ['¿','Qué', 'es', 'un', 'cuerpo','?'], ['Es', 'un', 'dominio', 'de', 'integridad', 'tal', 'que', 'todo', 'elemento', 'menos', 'el', 'neutro', 'tiene', 'un', 'inverso', 'multiplicativo.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

	pr(0008-12, ['¿', 'Cuál', 'es', 'la', 'caracteristica', 'a', 'la', 'que', 'se', 'refiere', 'el', 'concepto', 'de', 'cuerpo', '?'], ['Para', 'todo', 'a ∈ k', 'y', 'a', 'diferente', 'de', 'e', 'existe', 'a(tilde)', 'tal', 'que', 'a (x) a(tilde)', '=', 'u.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']).


% permutaciones y combinaciones.

leccion(permutaciones_y_combinaciones) :-

	pr(0008-1,['¿','Qué', 'es', 'el', 'principio', 'de', 'la', 'multiplicación','?'], ['Si', 'una', 'actividad', 'se', 'puede', 'construir', 'en', 't', 'pasos', 'sucesivos', 'y', 'el', 'paso', '1', 'se', 'suede', 'hacer', 'de', 'n1', 'maneras,', 'el', 'paso', '2', 'se', 'puede', 'realizar', 'de', 'n2', 'maneras,...,', 'y', 'el', 'paso', 't', 'de', 'nt', 'maneras,', 'entonces', 'el', 'número', 'de', 'actividades', 'posibles', 'es', 'n1*n2*...*nt.'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),

%	pr(0008-2,['Si', 'tenemos', '8', 'letras.', '¿','Cuántas', 'cadenas', 'podemos', 'hacer', 'con', '6', 'letras', 'si', 'no', 'pueden', 'estar', 'letras', 'repetidas', '?'], ['6*5*4*3*2*1', '=', '6!', '=' '720'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),

	pr(0008-3,['¿','Qué', 'es', 'una', 'permutación', '?'], ['Una', 'permutación', 'de', 'n', 'elementos', 'diferenctes', 'x1,x2,...,xn', 'es', 'un', 'ordenamiento', 'de', 'los', 'n', 'elementos', 'x1,x2,...,xn.'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),

	pr(0008-4,['¿','Cuál', 'es', 'la', 'permutación', 'de', 'n', 'elementos', '?'], ['N', 'factorial', '(N!).'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),

	pr(0008-5,['Si', 'tenemos', '5', 'de', 'diferentes', 'autores', 'y', 'queremos', 'ordenarlos', 'por', 'autor', 'de', 'cuantas', 'formas', 'podemos', 'ordenarlos'], ['5!', '=', '120'], ['Javier Solsona', 'Basado en E. Navarro. Matemática de 5to grado']),

	pr(0008-6,['¿', 'Si', 'tenemos', '5', 'del', 'mismo', 'autor', 'y', 'queremos', 'ordenarlos', 'por', 'autor', 'es', 'una', 'permutación', '?'], ['No'], ['Javier Solsona', 'Basado en E. Navarro. Matemática de 5to grado']),

	pr(0008-7,['De', 'cuantas', 'maneras', 'podemos', 'ordenar', '6', 'letras', 'diferentes' ], ['6!', '=', '720'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),

	pr(0008-8,['¿', 'Qué', 'es', 'una', 'r-permutacón', '?'], ['Una', 'r-permutación', 'de', 'n', 'elementos', 'diferentes', 'x1,x2,...,xn', 'es', 'un', 'ordenamiento', 'de', 'r', 'elementos', 'diferentes', 'de', 'x1,x2,...,xn', 'se', 'denota', 'por', 'P(n,r)'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),

	pr(0008-9,['¿', 'Cuál', 'es', 'la', 'expresión', 'matemática', 'de', 'P(n,r)', '?'], ['P(n,r)', '=', 'n*(n-1)*(n-2)*...*(n-r+1)', '=', 'n!/(n-r)!'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),
 
	pr(0008-10,['¿','De', 'cuántas', 'maneras', 'se', 'pueden', 'seleccionar', 'el', 'precidente,', 'vicepresidente,', 'secretario', 'y', 'tesorero', 'de', 'un', 'grupo', 'de', '10', 'personas', '?'], ['P(10,4)', '=', '10!/(10-4)!', '=', '5040.'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),

	pr(0008-11,['¿', 'Qué', 'es', 'una', 'combinación', '?'], ['Una', 'seleción', 'de', 'objetos', 'que', 'no', 'toma', 'en', 'cuenta', 'el', 'orden.'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),

	pr(0008-12,['¿', 'Qué', 'es', 'una', 'r-combinación', '?'], ['Es', 'una', 'seleción', 'no', 'ordenada', 'de', 'r', 'elementos', 'del', 'conjunto', 'del', 'cual', 'estemos', 'tomando', 'la', 'combianción.', 'Se', 'define', 'como', 'C(n,r).'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),

	pr(0008-13, ['¿','Cuál', 'es', 'la', 'expresión', 'matemática', 'de', 'C(n,r)', '?'], ['C(n,r)', '=', 'n!/((n-r)!*r!)'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),

	pr(0008-14, ['¿','De', 'cuántas', 'maneras', 'se', 'pueden', 'seleccionar', 'un', 'comité', 'de', 'tres', 'a', 'poartir', 'de', 'un', 'grupo', 'de', '10', 'personas', '?'], ['C(10,3)', '=', '10!/((10-3)!*3!)', '=', '120.'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']).

	pr(0008-15, ['¿','De', 'cuántas', 'maneras', 'se', 'pueden', 'seleccionar', 'un', 'comité', 'de', 'diez', 'a', 'poartir', 'de', 'un', 'grupo', 'de', '10', 'personas', '?'], ['C(10,10)', '=', '10!/((10-10)!*10!)', '=', '1.', 'De', 'esta', 'manera', 'vemos', 'que', 'la', 'combinación', 'de', 'n', 'en', 'n', 'es', '1,', 'porque', 'sin', 'importar', 'como', 'sus', 'posiciones', 'tienen', 'que', 'entrar', 'todas', 'las', 'personas', 'por', 'lo', 'que', 'hay', 'una', 'sola', 'combinación.'], ['Javier Solsona', 'Basado en el libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']).

%ejercicios de combinaciones y permutaciones

ejercicios(permutaciones_y_combinaciones) :-

	pr(0008-1, ['Con los números 1,2,3,4,5 y 6 ¿Cuańtas sumas diferentes de 3 sumandos cada una pueden hacerce?'],['C(6,3)', '=', '20', 'sumas', 'diferentes.'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-2, ['Se dispone de 4 colores diferentes. ¿Cuántos colores pueden obtenerse mezclando los 4 colores en la misma proporción?'],['C(4,4)', '=', '1', 'color.'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-3, ['¿Cuántas selecciones de 5 libros pueden hacerse con 12 libros diferentes?'],['C(12,5)', '=', '792', 'selecciones.'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-4, ['Con 5 potes de pintura de diferentes colores ¿cuántos colores pueden obtenerse utllizando en la formación de cada color tres colores en la misma cantidad?'],['C(5,3)', '=', '10', 'colores.'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-5, ['Se dispone de 7 pesas de diferentes valores cada una. ¿Cuántas pesadas diferentes pueden hacerse tomándolas de tres en tres? '],['C(7,3)', '=', '35', 'pesadas.'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-6, ['Se dispone de 5 marcas de vino. ¿Cuántos sabores pueden formarse mezclando las 5 marcas de cada vez en la misma proporción?'],['C(5,5)', '=', '1'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-7, ['Se dispone de 13 monedas diferentes. ¿Cuántas colecciones pueden hacerse entrando en cada colección 6 monedas?'],['C(13,6)', '=', '1716'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-8, ['Con seis de 1,2,5,10,20 y 50 kilogramos. ¿Cuántas pesadas diferentes pueden obtenerse, tomando aquellas de tres en tres? '],['C(6,3)', '=', '20'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-9, ['¿Cuántos productos diferentes pueden formarse con los números 7, 9, 11, 13 y 17, tomados de tres en tres? '],['C(5,3)', '=', '10'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-10, ['¿Cuántas selecciones de libros pueden hacerse con 10 libros entrando en cada colección 3 libros?'],['C(10,3)', '=', '120'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-11, ['Una habitación tiene 5 puertas. ¿De cuántas maneras puede una persona entrar y salir por puertas diferentes?'],['P(5,2)', '=', '20'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-12, ['Se dispone de 10 soldados. ¿Cuántas filas de a 5 soldados pueden hacerse?'],['P(10,5)', '=', '30240'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-13, ['¿De cuántas maneras diferentes pueden colocarse 4 soldados en una fila?'],['P(4)', '=', '24'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-14, ['En una carrera de caballos figuran 6 ejemplares ¿De cuántas maneras diferentes pueden llegar a la meta, supooniendo que llegan uno por uno?'],['P6', '=', '720'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-15, ['En una fila de 10 butacas. ¿Cuántas posiciones diferentes pueden ocupar 3 personas, sentandose siempre las 3? '],['P(10,3)', '=', '720'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-16, ['¿Cuántos arcos iris se pueden formar con los 7 colores del espectro? '],['P(7)', '=', '5040'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-17, ['En una exposición de automóviles ¿De cuántos modos diferentes pueden colocarse en una fila 10 coches tomados de 7 a 7? '],['P(10,7)', '=', '604800'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-18, ['¿De cuántas maneras se pueden colocar 8 llaves en un llavero si siempre se colocan todas? '],['P(8)', '=', '40320'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-19, ['¿Cuántas banderas de franjas horizontales de 4 colores se pueden formar con los 7 colores del arco iris sin repetir ningún color? '],['P(7,4)', '=', '820'],['Tomado de E. Navarro. Matemática de 5to grado']),

	pr(0008-20, ['Con las cifras del número 238671. Cálcular cuantas matriculas de carros pueden hacerse sabiendo que cada matricula esta formada por 4 números'],['P(6,4)', '=', '360'],['Tomado de E. Navarro. Matemática de 5to grado']).
