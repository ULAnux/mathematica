% servicio.pl version alfa 0.1 2014-10-16
% 
% Un programa para levantar un servicio web del
% proyecto ULAnix mathematica. Es software libre. 
%
% basado en: 
% http://www.pathwayslms.com/swipltuts/html/index.html#9
% https://raw.githubusercontent.com/Anniepoo/swiplwebtut/master/webserver3_2.pl

:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_error)).
:- use_module(library(http/html_write)).

% we need this module from the HTTP client library for http_read_data
:- use_module(library(http/http_client)).
:- http_handler('/', web_form, []).

/* 
Para activar el servicio: ?servidor(8000)
para detenerlo: ?- http_stop_server(8000, []).
*/

servidor(Puerto) :-
        http_server(http_dispatch, [port(Puerto)]).

/*
Para usarlo

navegar por http://127.0.0.1:8000/

*/

web_form(_Request) :-
	reply_html_page(
	    title('ULAnix Mathematica'),
	    [
	     form([action='/pr', method='POST'], [
		p([], [
		  label([for=p],'Pregunta:'),
		  input([name=p, type=textarea])
		      ]),
		p([], [
		  label([for=r],'Respuesta:'),
		  input([name=r, type=textarea])
		      ]),
		p([], input([name=submit, type=submit, value='Submit'], []))
	      ])]).

:- http_handler('/pr', landing_pad, []).

landing_pad(Request) :-
        member(method(post), Request), !,
        http_read_data(Request, Data, []),
	procesa(Data, P, R), 
	reply_html_page(
	   [title('Consulta')],
	    [\page_content([P,R], Request)]),
        %format('Content-type: text/html~n~n', []),
	%format('<p>', []),
        portray_clause(Data),
	%format('</p><p>========~n\n', []),
	%portray_clause(Request),
	format('</p>').

page_content([P,R], _Request) -->
	html(
	   [
	p([style='font-size: 15pt', title='tooltip text'], 'ULAnix Mathematica.. para aprender matematica'),
	p([style='font-size: 26pt', title='Pregunta'], P),
	p([style='font-size: 26pt', title='Respuesta'], R),
	a([href='http://127.0.0.1:8000/'], 'Volver'), p('--'), 
   	a([href='http://nux.ula.ve/mathematica'], 'ULAnux Mathematica')]).

procesa(Data, Pregunta, Respuesta) :-
	member(p=Pre, Data),
	member(r=Res, Data),
	(Pre\='' -> read_term_from_atom(Pre, Pregunta, []) ; true), 
	(Res\='' -> read_term_from_atom(Res, Respuesta, []) ; true), 
	pr(_,Pregunta, Respuesta, _, _). 

