%estructuras algebraicas teoria

leccion(estructuras_algebraicas_teoria) :-

pr(0008-1,['¿','Cuáles', 'son', 'las', 'estructuras', 'algebraicas', '?'], ['Grupo', ',', 'Grupo comutativo o abeliano', ',', 'Anillo', ',', 'Anillo con unidad', ',', 'Anillo conmutativo', ',', 'Dominio de integridad', ',', 'Cuerpo','.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

pr(0008-2,['¿','Qué', 'es', 'un', 'Grupo','?'], ['Es', 'un', 'conjunto', 'cerrado', 'respecto', 'de', 'una', 'operación', 'asociativa', 'con', 'cero', 'e', 'inverso.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

pr(0008-3,['¿' 'Cuáles', 'son', 'las', 'caracteristicas', 'a', 'las', 'que', 'se', 'refiere', 'el', 'concepto', 'de', 'grupo', '?'], ['1)','Si', 'a ∈ G', 'y', 'b ∈ G', 'entonces', 'a (+) b ∈ G', '2)', '(a (+) b) (+) c', '=', 'a (+) (b (+) c)', '3)', 'Existe', 'un', 'e ∈ G', 'tal', 'que', 'para', 'todo', 'a ∈ G', 'es', 'a (+) e', '=', 'e (+) a', '=', 'a', '4)', 'Dado', 'a ∈ G', 'existe', 'un', 'a(tilde) ∈ G', 'tal', 'que', 'a (+) a(tilde)', '=', 'e', 'Nota', 'el', '( operador )', 'no', 'tiene', 'porque', 'referirse', 'a', 'la', 'operación', 'que', 'estamos', 'acostrumbrados',  'en', 'los', 'números','reales', 'sino', 'que', 'puede', 'ser', 'redefinida', 'en', 'todas', 'las', 'preguntas', 'de', 'esta', 'lección.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

pr(0008-4,['¿', 'Qué', 'es', 'un', 'grupo conmutativo o abeliano','?'], ['Es', 'un', 'grupo','que', 'cumple','con', 'la', 'condición', 'adicional', 'de', 'que', 'la', 'operación', '(+)', 'es', 'conmutativa,', 'es', 'decir:', 'a (+) b', '=', 'b (+) a.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

pr(0008-5,['¿','Qué', 'es', 'un', 'anillo','?'], ['Es', 'un', 'grupo', 'cerrado', 'respecto', 'de', '2', 'operaciones', '(+)', 'y', '(x)', 'que', 'es', 'un', 'grupo', 'abeliano', 'respecto', 'de', '(+)', 'y', 'tal', 'que', 'la', '(x)', 'es', 'asociativa', 'y', 'distributiva', 'respecto', 'de', '(+).'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

pr(0008-6,['¿', 'Cuáles', 'son', 'las', 'caracteristicas', 'a', 'las', 'que', 'se', 'refiere', 'el', 'concepto', 'de', 'un', 'anillo', '?'], ['Aqui a,b,c ∈ A', '1)', 'a (+) b ∈ A;', '(a (+) b) (+) c', '=', 'a (+) (b (+) c);', 'existe', 'e | a (+) e', '=', 'e (+) a', '=', 'a;', 'existe', 'a(tilde) | a (+) a(tilde)', '=', 'e;', 'a (+) b', '=', 'b (+) a', '2)', 'a (*) b ∈ A;', '(a (*) b) (*) c', '=', 'a (*) (b (*) c)', '3)', '(a (+) b) (*) c', '=', '(a (*) c) (+) (b (*) c);', 'a (*) (b (+) c)', '=', '(a (*) b) (+) (a (*) c).'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

pr(0008-7,['¿','Qué', 'es', 'un', 'anillo','con', 'unidad', '?'], ['El', 'anillo', 'se', 'llama', 'con', 'unidad', 'si', 'existe', 'un', 'elemento', 'u', 'tal', 'que:', 'a (x) u', '=', 'u (x) a', '=', 'a', 'para', 'todo', 'a ∈ A.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),
 
pr(0008-8,['¿','Qué', 'es', 'un', 'anillo','comutativo', '?'], ['El', 'anillo', 'es', 'conmutativo', 'si', 'a (x) b', '=', 'b (x) a.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

pr(0008-9,['¿','Qué', 'es', 'un', 'dominio','de', 'integridad', '?'], ['Es', 'un', 'anillo', 'de', 'conmutación', 'con', 'unidad.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

pr(0008-10,['¿', 'Cuál', 'es', 'la', 'caracteristica', 'a', 'la', 'que', 'se', 'refiere', 'el', 'concepto', 'de', 'dominio', 'de', 'integridad', '?'], ['Si', 'a,b,c ∈ a D', 'entonces', 'c (x) a', '=', 'c (x) b', '->', 'a', '=', 'b', '(multiplicación).', 'Esta', 'propiedad', 'equivale', 'a', 'decir', 'que:', 'r (x) s', '=', '0', '->', 'r', '=', '0', 'para', 'todo', 's.' ], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

pr(0008-11, ['¿','Qué', 'es', 'un', 'cuerpo','?'], ['Es', 'un', 'dominio', 'de', 'integridad', 'tal', 'que', 'todo', 'elemento', 'menos', 'el', 'neutro', 'tiene', 'un', 'inverso', 'multiplicativo.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']),

pr(0008-12, ['¿', 'Cuál', 'es', 'la', 'caracteristica', 'a', 'la', 'que', 'se', 'refiere', 'el', 'concepto', 'de', 'cuerpo', '?'], ['Para', 'todo', 'a ∈ k', 'y', 'a', 'diferente', 'de', 'e', 'existe', 'a(tilde)', 'tal', 'que', 'a (x) a(tilde)', '=', 'u.'], ['Javier Solsona', 'Tomado de guía de estructuras algebraicas del profesor Carlos Domingo']).
