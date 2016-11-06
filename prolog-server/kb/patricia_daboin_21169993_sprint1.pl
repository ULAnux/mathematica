/*
Usando argumentos en prolog.

"Todos los hombres son mortales. Socrates es un hombre. Por lo tanto,
Socrates es mortal."
*/
hombre(socrates).
mortal(X):-hombre(X).

