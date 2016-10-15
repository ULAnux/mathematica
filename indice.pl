% **********************************************************************
% * indice.pl (antes index.pl) version alfa 1.0 2015-06-15                      *
% * Páginas web principal y de Lógica generadas a partir de un         *
% * código con HTML termerizado en Prolog. Proyecto ULAnix             *
% * mathematica. Este programa es Software Libre. Desarrollado por     *
% * Ixhel Mejías, basándose en la página web diseñada e implementada   *
% * por Santiago y Sánchez (2014), disponible en:                      *
% * http://nux.ula.ve/mathematica/mat_discretas.zip.                   *
% **********************************************************************

% Se debe correr previamente mathematica.pl.

:- [buscador]. 
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).
:- use_module(library(http/html_head)).

:- use_module(library(http/http_client)).

:- http_handler(css('bootstrap.css'), http_reply_file('bootstrap.css', []), []).
:- http_handler(css('main.css'), http_reply_file('main.css', []), []).

:- html_resource(jquery, [virtual(true),
	   requires('https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js')]).
:- html_resource(bootstrap_js, [virtual(true), ordered(true),
	    requires([jquery, 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js'])]).


:- html_resource(js_script('bootstrap.js'), [requires(js_script('jquery.min.js'))]).

http:location(css, root(css), []).
http:location(js_script, root(js_script), []).


% **********************************************************************

:- http_handler('/', landing_pad, []).

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

landing_pad(Request) :-

	reply_html_page(
	   [title('ULAnix Mathematica')],
	    [\page_content(Request)]).

% **********************************************************************
% Contenido de la página principal.

page_content(_Request) -->
	html(
	   [\html_requires(css('bootstrap.css')),
	    \html_requires(css('main.css')),
	    \html_requires(jquery),
	    \html_requires(bootstrap_js),

	    \head,
	    \enlaces,
	    \temas,
	    \foot

     ]).


% **********************************************************************

:- http_handler('/logica', logica_landing_pad, []).

logica_landing_pad(Request) :-
        member(method(post), Request), !,
	   reply_html_page(
	   [title('Lógica')],
	    [\logica_page_content(Request)]).

% **********************************************************************
% Contenido de la página de Lógica.

logica_page_content(_Request) -->
	html(
	    [\html_requires(css('bootstrap.css')),
	    \html_requires(css('main.css')),
	    \html_requires(jquery),
	    \html_requires(bootstrap_js),

	    \head,
	    \enlaces,
	    \busqueda,
	    \foot

	]).


% **********************************************************************
% Mediante "head" se incluye una cabecera a la página, con la imagen
% de ULAnix Mathematica.

head --> html(header([div(class='img-responsive container row col-xs-12 col-sm-12 col-md-12 col-lg-12',img([src='http://s14.postimg.org/dossnbh4h/ULAnix.jpg', class='img-responsive', style='float: left; margin: 0px 0px 0px 100px;']))])).


% **********************************************************************
% Mediante "enlaces" se incluye el código que genera la barra de
% navegación con el menú desplegable que contiene los enlaces a los otros
% temas de matemáticas y a otras páginas web.
%
enlaces --> html(form(method='POST', [

		 \[
		'<nav id="menu-responsive" class="navbar navbar-default" role="navigation">
		<div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse "><span class="sr-only">Cambiar Navegación</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button></div>
		<div class="container"><div id="menu" class="collapse navbar-collapse navbar-ex1-collapse venacti-white">

		<div><ul class="nav navbar-nav"><li><a href="/"><img src="http://s2.postimg.org/65fmgunf9/home.png"> Inicio</a></li><li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="http://s12.postimg.org/howtipoh5/temas.png"> Temas<b class="caret"></b></a><ul class="dropdown-menu"><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Lógica" formaction="/logica" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Conjuntos y Funciones" formaction="/" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Estructuras Algebraicas" formaction="/" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Inducción Matemática" formaction="/" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Combinatoria" formaction="/" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Funciones Generatrices" formaction="/" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Recurrencias" formaction="/" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Introducción a la Complejidad Computacional" formaction="/" formmethod="POST"></li>    </ul> </li><li><a href="http://nux.ula.ve"><img src="http://s12.postimg.org/8qgegjfah/bookmark.png"> ULAnix</a></li><li><a href="http://www.serbi.ula.ve/"><img src="http://s24.postimg.org/mjwzo1fgh/white_folder.png"> SERBIULA</a></li> </ul></ul>
   </div></div></div>
</nav>']

				     ]) ).



% **********************************************************************
% Mediante "busqueda" se genera la sección de la interfaz donde el
% usuario interactúa con el tutor a través de las preguntas y
% respuestas. Además, se presenta al usuario todas las preguntas de
% Lógica sugeridas.

busqueda --> html(form([style='align: left; margin: 0px 0px 0px 100px;',action='/pr', method='POST'], [

		p(div([class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11',style='margin:0px;'],
		  h4(class='venacti',b('Búsqueda Detallada'))
		 )),
		 p(div(class='col-xs-11 col-sm-11 col-md-11 col-lg-11', html(\['<hr></hr>']))),

		p(div(class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11',

		  input([name=p, class='form-control input-md',type=textarea, placeholder='Pregunta de Lógica'])
		      )),
		p(div(class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11',

		    input([name=r, class='form-control input-md', type=textarea, placeholder='Respuesta de Lógica'])
		      )
		 ),
		p(div(class='form-group col-xs-5 col-sm-5 col-md-5 col-lg-5',
		  input([name=submit, type=submit, class='btn btn-md btn-success btn-block', value='Buscar']))),
		p(div(class='col-xs-11 col-sm-11 col-md-11 col-lg-11', html(\['<br></br>']))),
		p(div([class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11',style='margin:0px;'], h4(class='venacti',b('Todas las preguntas de Lógica')))),
			   p(div(class='col-xs-11 col-sm-11 col-md-11 col-lg-11', html(\['<hr></hr>']))),

		section(p(div([class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11 degraded container-planes'], p(['AQUÍ VAN TODAS LAS PREGUNTAS DE LÓGICA',p('[no, falso, implica, falso]'),p('[no, verdad, implica, falso]'),p('[no, falso, implica, verdad]'),p('[no, verdad, implica, verdad]')]))))


	      ])).

% **********************************************************************
% Mediante "temas" se genera la sección de la interfaz donde se da la
% bienvenida al usuario y se muestran todos los temas de matemáticas
% (página principal).


temas --> html(form([style='align: left; margin: 0px 0px 0px 100px;'], [
		section(p(div([class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11 degraded container-planes'], p(['BIENVENIDOS AL CURSO DE MATEMÁTICAS DISCRETAS',p('Párrafo 1'),p('Párrafo 2'),p('Párrafo 3')])))),
		p(div(class='col-xs-11 col-sm-11 col-md-11 col-lg-11', html(\['<br></br>']))),
		p(div([class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11',style='margin:0px;'], h4(class='venacti',b('Temas del Curso')))),
			   p(div(class='col-xs-11 col-sm-11 col-md-11 col-lg-11', html(\['<hr></hr>']))),

		section(p(div([class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11 degraded container-planes'], p(['AQUÍ VAN TODOS LOS TEMAS EN UNA TABLA',
		p(div(class='form-group col-xs-5 col-sm-5 col-md-5 col-lg-5',

	input([name=submit, type=submit, class='btn btn-md btn-success btn-block', value='Lógica', formaction='/logica', formmethod='POST'])


		       ))  ]))))


	      ])).

% **********************************************************************
% Mediante "foot" se genera el pie de la página. En esta sección se
% presenta un botón para subir a la parte de arriba de la página, los
% datos de los desarrolladores de la misma y, por último, la fecha y
% hora actual.

foot --> html(footer([p(div([id='subir',class='text-right'],input([name='img-subir', type=image,  src='http://s15.postimg.org/82q42vo5j/icon_top.png', onclick='window.location.href = "#top";', alt='Subir']))),
		     p(div([class='text-center'],'Lógica y Matemáticas para Simulación © 2015 - Universidad de Los Andes / Derechos Reservados.')),
		     p(div([class='text-center'],'Diseñado por Carlos Santiago y Luis Sánchez. Generado desde Prolog por Ixhel Mejías.')),

		      div([class='text-left'],html(\['<hr></hr>','<script>document.write(Date());</script>']))


						    ])).


% **********************************************************************
% * "Programa para levantar un servicio web del                        *
% * proyecto ULAnix mathematica. Es software libre."                   *
% * Fuente: servicio.pl version alfa 0.1 2014-10-16                    *
% * Editado por Ixhel Mejías                                           *
% **********************************************************************

:- http_handler('/pr', pr_landing_pad, []).

pr_landing_pad(Request) :-
        member(method(post), Request), !,
        http_read_data(Request, Data, []),
	procesa(Data, P, R),
	reply_html_page(
	   [title('Consulta')],
	    [\pr_page_content([P,R], Request)]).
        %format('Content-type: text/html~n~n', []),
	%format('<p>', []),
        %portray_clause(Data).OJO
	%format('</p><p>========~n\n', []),
	%portray_clause(Request),
	%format('</p>').

% **********************************************************************
% Contenido de la página de preguntas y respuestas (pr).

pr_page_content([P,R], _Request) -->
	html(
	   [
	    \html_requires(css('bootstrap.css')),
	    \html_requires(css('main.css')),
	    \html_requires(jquery),
	    \html_requires(bootstrap_js),
	    \head,
	    \enlaces,
	    form([style='align: left; margin: 0px 0px 0px 100px;',action='javascript:history.back();', method='POST'], [
	    \['<br></br>'],
	    p([style='font-size: 20pt', title='Pregunta'], 'Pregunta: '),
	    p([style='font-size: 26pt', title='Pregunta'], P),
	    p([style='font-size: 20pt', title='Pregunta'], 'Respuesta: '),
	    p([style='font-size: 26pt', title='Respuesta'], R),
	    \['<br></br>'],
	    p(div(class='form-group col-xs-5 col-sm-5 col-md-5 col-lg-5',
	    input([name=submit, type=submit, class='btn btn-md btn-success btn-block', value='Volver'])))]),

	    \foot

	    ]).

procesa(Data, Pregunta, Respuesta) :-
	member(p=Pre, Data),
	member(r=Res, Data),
	(Pre\='' -> read_term_from_atom(Pre, Pregunta, []) ; true),
	(Res\='' -> read_term_from_atom(Res, Respuesta, []) ; true),
	% pr(_,Pregunta, Respuesta, _, _).
	buscar_resp(Pregunta, Respuesta). 

% **********************************************************************
% * Fuente: index.pl   version alfa 1.0 2015-3-4                       *
% * Editado por Ixhel Mejías     
% * Editado por Jacinto Dávila                                         *
% **********************************************************************



