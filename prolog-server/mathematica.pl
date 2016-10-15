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


:- ['./kb/0000.pl']. % 'Jacinto Dávila'
:- ['./kb/0001.pl']. % 'María Daniela Baptista Theuerkauf'
:- ['./kb/0002.pl']. % 'Luis Sanchez'
:- ['./kb/0003.pl']. % 'Carlos Santiago'
:- ['./kb/0004.pl']. % 'Robi Antonio Rondon Peña'
:- ['./kb/0005.pl']. % 'José Manuel Barrios Lacruz'
:- ['./kb/0006.pl']. % 'Miguelangel Regalado Alcalá'
:- ['./kb/0007.pl']. % 'Maria F Blanco R'
:- ['./kb/0008.pl']. % 'Javier Solsona'
:- ['./kb/0009.pl']. % 'Urbaez'
:- ['./kb/0010.pl']. % 'Alex Romero'
:- ['./kb/0011.pl']. % 'Anthony Jesus Montero Nuñez'
:- ['./kb/0012.pl']. % 'Maria Monsegui'
:- ['./kb/0013.pl']. % 'Beczabeth, Florez'
:- ['./kb/0014.pl']. % 'Gladymar Rojas'
:- ['./kb/0015.pl']. % 'Rossangela Paola de las Mercedes Bellorin Labrador'
:- ['./kb/0016.pl']. % 'Andres de J. Pinto V'
:- ['./kb/0018.pl']. % 'Jesús Herrera'
:- ['./kb/0019.pl']. % 'Daniel Rivera'
:- ['./kb/0020.pl']. % 'Juancarlos Salcedo'
:- ['./kb/0021.pl']. % 'Samuel Perez'
:- ['./kb/0022.pl']. % 'Isamar Benitez'
:- ['./kb/0023.pl']. % 'Henry J. Mendez'
:- ['./kb/0024.pl']. % 'Jorge Burguera'
% :- ['./kb/0025.pl']. % 'Flores Ulloa Daniel'
:- ['./kb/0026.pl']. % 'OROZCO MORALES IVANOT'
:- ['./kb/0027.pl']. % 'Yamilet Casanova'
% :- ['./kb/0028.pl']. % 'David Alejandro Acosta Jaimes' archivos aparte
% :- ['./kb/0029.pl']. % 'Miguel Plaza'
% :- ['./kb/0030.pl']. % 

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
