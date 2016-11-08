% permutaciones y combinaciones.

leccion(permutaciones_y_combinaciones) :-

pr(0008-1,['¿','Qué', 'es', 'el', 'principio', 'de', 'la', 'multiplicación','?'], ['Si', 'una', 'actividad', 'se', 'puede', 'construir', 'en', 't', 'pasos', 'sucesivos', 'y', 'el', 'paso', '1', 'se', 'suede', 'hacer', 'de', 'n1', 'maneras,', 'el', 'paso', '2', 'se', 'puede', 'realizar', 'de', 'n2', 'maneras,...,', 'y', 'el', 'paso', 't', 'de', 'nt', 'maneras,', 'entonces', 'el', 'número', 'de', 'actividades', 'posibles', 'es', 'n1*n2*...*nt.'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),

pr(0008-2,['Si', 'tenemos', '8', 'letras.', '¿','Cuántas', 'cadenas', 'podemos', 'hacer', 'con', '6', 'letras', 'si', 'no', 'pueden', 'estar', 'letras', 'repetidas', '?'], ['6*5*4*3*2*1', '=', '6!', '=' '720'], ['Javier Solsona', 'Tomado del libro Matemáticas Discretas sexra edición de Richard Johnsonbaugh']),

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