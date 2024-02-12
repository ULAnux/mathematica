%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	file: venezuela.pl                                                          %
%	name: Miguel Méndez																			 %
%	matter: Matemáticas Discretas 														    % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ¿Quien devalúa por qué? Jacinto Dávila
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Venezuela es un pais
pais(venezuela).

% El Bolivar es la moneda de Venezuela
moneda(bolivar,venezuela).

% Hay Reduccion del valor nominal de la moneda del pais P si M es la moneda del pais P Y P es un pais
reduccion_valor_nominal_moneda(P) :- moneda(M,P), pais(P),!.

% Hay devaluacion en el pais P si hay reduccion del valor nominal de la moneda del Pais P
devaluacion(P) :- reduccion_valor_nominal_moneda(P).

% Hay desconfianza en el pais P si hay devaluacion en el pais P
desconfianza(P) :- devaluacion(P).

% No Vale menos un pais P si hay reduccion del valor nominal de la moneda del pais P
vale_menos(P) :- not(reduccion_valor_nominal_moneda(P)).

% Hay mercado cambiario libre en el pais P cuando hay reduccion del valor nominal de la moneda del pais P
mercado_cambiario_libre(P) :- reduccion_valor_nominal_moneda(P).


