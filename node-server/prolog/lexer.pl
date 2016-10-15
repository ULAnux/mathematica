% lexer

:- use_module(library(http/dcg_basics)).

lex([H | T]) -->
    lexem_t(H), !, % {writeln(H)}, 
    lex(T).

lex([]) --> [].

lexem_t(L) --> trashes, lexem(L), trashes.

trashes --> trash, !, trashes.
trashes --> [].

trash --> comment_marker(End), string(_), End, !.
trash --> white. % elimina blancos
trash --> "\r".  % elimina fines de linea
trash --> "\n".  % elimina salto de linea
trash --> "\t".  % elimina tabuladores

comment_marker("*)") --> "(*".
comment_marker("*/") --> "/*".
comment_marker("\n") --> "%".
comment_marker("\r") --> "%".
comment_marker("") --> "%".

hex_start --> "0X".
hex_start --> "0x".

lexem('(') --> "(".
lexem(')') --> ")".
lexem('[') --> "[".
lexem(']') --> "]".
lexem('{') --> "{".
lexem('}') --> "}".
lexem('.') --> ".". 
lexem('+') --> "+".
lexem('-') --> "-".
lexem('*') --> "*".
lexem('/') --> "/".
lexem('^') --> "^".
lexem(',') --> ",".
lexem('!') --> "!".
lexem('?') --> "?".
lexem('¿') --> "¿".
lexem(':') --> ":".

lexem(N) --> hex_start, !, xinteger(N). % this handles hex numbers
lexem(N) --> number(N). % this handles integers/floats
lexem(A) --> identifier_c(L), {string_to_atom(L, A)}.

identifier_c([H | T]) --> alpha(H), !, many_alnum(T).

alpha(H) --> [H], {code_type(H, alpha);code_type(H, csym)}.
alnum(H) --> [H], {code_type(H, alnum);code_type(H, csym)}.

many_alnum([H | T]) --> alnum(H), !, many_alnum(T).
many_alnum([]) --> [].


% test

test_lexem :- 
  lexem('(', "(", []),
  lexem(')' , ")", []),
  lexem('[' , "]", []),
  lexem('{' , "{", []),
  lexem('}' , "}", []),
  lexem('.' , ".", []), 
  lexem('+' , "+", []),
  lexem('-' , "-", []),
  lexem('*', "*", []),
  lexem('/' , "/", []),
  lexem('^' , "^", []),
  lexem(',' , ",", []),
  lexem('!' ,"!", []),
  lexem('?' , "?", []),
  lexem('¿', "¿", []),
  lexem(':', ":", []).

