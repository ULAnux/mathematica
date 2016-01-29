% mathematica.pl version alfa 1.9
% Esta es la base de conocimiento central del proyecto ULAnux/ULAnix mathematica.
% que coordina Jacinto Dávila en la Universidad de Los Andes, Venezuela.
% Mas información en http://nux.ula.ve/mathematica/ o http://ulanix.sourceforge.net o 
% https://github.com/ULAnux/mathematica
%
% Este programa es software libre, con la licencia Affero GPLv3
% Los créditos a los desarrolladores aparecerán junto a cada registro o como comentarios. 

:- multifile pr/5, rp/3.
:- discontiguous pr/6.
:- discontiguous respuesta/1.
:- discontiguous varia_con/3.
:- discontiguous respuesta/2.
:- discontiguous rp/2.


:- ['0000.pl']. % 'Jacinto Dávila'
:- ['0001.pl']. % 'María Daniela Baptista Theuerkauf'
:- ['0002.pl']. % 'Luis Sanchez'
:- ['0003.pl']. % 'Carlos Santiago'
:- ['0004.pl']. % 'Robi Antonio Rondon Peña'
:- ['0005.pl']. % 'José Manuel Barrios Lacruz'
:- ['0006.pl']. % 'Miguelangel Regalado Alcalá'
:- ['0007.pl']. % 'Maria F Blanco R'
:- ['0008.pl']. % 'Javier Solsona'
:- ['0009.pl']. % 'Urbaez'
:- ['0010.pl']. % 'Alex Romero'
:- ['0011.pl']. % 'Anthony Jesus Montero Nuñez'
:- ['0012.pl']. % 'Maria Monsegui'
:- ['0013.pl']. % 'Beczabeth, Florez'
:- ['0014.pl']. % 'Gladymar Rojas'
:- ['0015.pl']. % 'Rossangela Paola de las Mercedes Bellorin Labrador'
:- ['0016.pl']. % 'Andres de J. Pinto V'
:- ['0018.pl']. % 'Jesús Herrera'
:- ['0019.pl']. % 'Daniel Rivera'
:- ['0020.pl']. % 'Juancarlos Salcedo'
:- ['0021.pl']. % 'Samuel Perez'
:- ['0022.pl']. % 'Isamar Benitez'
:- ['0023.pl']. % 'Henry J. Mendez'
:- ['0024.pl']. % 'Jorge Burguera'
% :- ['0025.pl']. % 'Flores Ulloa Daniel'
:- ['0026.pl']. % 'OROZCO MORALES IVANOT'
:- ['0027.pl']. % 'Yamilet Casanova'
% :- ['0028.pl']. % 'David Alejandro Acosta Jaimes' archivos aparte
% :- ['0029.pl']. % 'Miguel Plaza'
% :- ['0030.pl']. % 

% Comenta 0000: Qué vas a hacer con esto?
% mirar http://www.numberempire.com/primenumbers.php
%definicion de un numero natural
es_Natural(X) :- integer(X),(X > 0).
es_Entero(X) :- integer(X).
es_Real(X) :- float(X).
%definicion de un numero par
es_Par(Y) :- (integer(Y), 0 is Y mod 2).
%definicion de un numero impar
es_Impar(X) :- (integer(X), not(0 is X mod 2)).
%
%definicion numeros primos (incompleta)
% 
es_Primo(1).
es_Primo(2).
es_Primo(3).
es_Primo(5).
es_Primo(7).
es_Primo(X) :- integer(X),(X>0),not(0 is X mod 2), not(0 is X mod 3), not(0 is X mod 5), not(0 is X mod 7).
 
%
si(llueve, hay_nubes). 
%


