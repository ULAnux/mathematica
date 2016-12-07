% **********************************************************************
% * index.pl version beta 1.0 2016-11-07                               *
% * Paginas web principal y de Logica generadas a partir de un         *
% * codigo con HTML termerizado en Prolog. Proyecto ULAnix             *
% * mathematica. Este programa es Software Libre. Desarrollado por     *
% * Ixhel Mejias, basandose en la pagina web diseñada e implementada   *
% * por Santiago y Sanchez (2014). Actualizado por Jacinto Davila      *
% **********************************************************************

:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).
:- use_module(library(http/html_head)).

:- use_module(library(http/http_client)).

:- [buscador]. 
:- [mathematica]. 

:- http_handler(css('bootstrap.css'), http_reply_file('bootstrap.css', []), []).
:- http_handler(css('main.css'), http_reply_file('main.css', []), []).

:- html_resource(jquery, [virtual(true),
	   requires('https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js')]).
:- html_resource(bootstrap_js, [virtual(true), ordered(true),
	    requires([jquery, 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js'])]).


:- html_resource(js_script('bootstrap.js'), [requires(js_script('jquery.min.js'))]).

% http_reply_from_files is in here
:- use_module(library(http/http_files)).

:- multifile http:location/3.
:- dynamic   http:location/3.

http:location(files, '/f', []).

% this serves files from the directory assets
% under the working directory
:- http_handler(files(.), http_reply_from_files(i, []), [prefix]).

http:location(css, root(css), []).
http:location(js_script, root(js_script), []).

% **********************************************************************

:- http_handler('/', landing_pad, []).

start(Port) :-
	http_server(http_dispatch, [port(Port)]).

stop(Port) :- 
         http_stop_server(Port, []).

landing_pad(Request) :-

	reply_html_page(
	   [title('ULAnix Mathematica')],
	    [\page_content(Request)]).

% **********************************************************************
% Contenido de la pagina principal.

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
	   [title('Logica')],
	    [\logica_page_content(Request)]).

% **********************************************************************
% Contenido de la pagina de Logica.

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
% Mediante "head" se incluye una cabecera a la pagina, con la imagen
% de ULAnix Mathematica.

% head --> html(header([div(class='img-responsive container row col-xs-12 col-sm-12 col-md-12 col-lg-12',img([src='http://s14.postimg.org/dossnbh4h/ULAnix.jpg', class='img-responsive', style='float: left; margin: 0px 0px 0px 100px;']))])).

head --> html(header([div(class='img-responsive container row col-xs-12 col-sm-12 col-md-12 col-lg-12',img([src='f/ULAnix.jpg', class='img-responsive', style='float: left; margin: 0px 0px 0px 100px;']))])).


% **********************************************************************
% Mediante "enlaces" se incluye el codigo que genera la barra de
% navegacion con el menu desplegable que contiene los enlaces a los otros
% temas de matematicas y a otras paginas web.
%
enlaces --> html(form(method='POST', [

		 \[
		'<nav id="menu-responsive" class="navbar navbar-default" role="navigation">
		<div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse "><span class="sr-only">Cambiar Navegacion</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button></div>
		<div class="container"><div id="menu" class="collapse navbar-collapse navbar-ex1-collapse venacti-white">

		<div><ul class="nav navbar-nav"><li><a href="/"><img src="http://s2.postimg.org/65fmgunf9/home.png"> Inicio</a></li><li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="http://s12.postimg.org/howtipoh5/temas.png"> Temas<b class="caret"></b></a><ul class="dropdown-menu"><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Logica" formaction="/logica" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Conjuntos y Funciones" formaction="/" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Estructuras Algebraicas" formaction="/" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Induccion Matematica" formaction="/" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Combinatoria" formaction="/" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Funciones Generatrices" formaction="/" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Recurrencias" formaction="/" formmethod="POST"></li><li><input name="submit" type="submit" class="btn btn-md btn-success btn-block" value="Introduccion a la Complejidad Computacional" formaction="/" formmethod="POST"></li>    </ul> </li><li><a href="http://nux.ula.ve"><img src="http://s12.postimg.org/8qgegjfah/bookmark.png"> ULAnix</a></li><li><a href="http://www.serbi.ula.ve/"><img src="http://s24.postimg.org/mjwzo1fgh/white_folder.png"> SERBIULA</a></li> </ul></ul>
   </div></div></div>
</nav>']

				     ]) ).



% **********************************************************************
% Mediante "busqueda" se genera la seccion de la interfaz donde el
% usuario interactua con el tutor a traves de las preguntas y
% respuestas. Ademas, se presenta al usuario todas las preguntas de
% Logica sugeridas.

busqueda --> html(form([style='align: left; margin: 0px 0px 0px 100px;',action='/pr', method='POST'], [

		p(div([class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11',style='margin:0px;'],
		  h4(class='venacti',b('Busqueda Detallada'))
		 )),
		 p(div(class='col-xs-11 col-sm-11 col-md-11 col-lg-11', html(\['<hr></hr>']))),

		p(div(class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11',

		  input([name=p, class='form-control input-md',type=textarea, placeholder='Pregunta de Logica'])
		      )),
		p(div(class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11',

		    input([name=r, class='form-control input-md', type=textarea, placeholder='Respuesta de Logica'])
		      )
		 ),
		p(div(class='form-group col-xs-5 col-sm-5 col-md-5 col-lg-5',
		  input([name=submit, type=submit, class='btn btn-md btn-success btn-block', value='Buscar']))),
		p(div(class='col-xs-11 col-sm-11 col-md-11 col-lg-11', html(\['<br></br>']))),
		p(div([class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11',style='margin:0px;'], h4(class='venacti',b('Todas las preguntas de Logica')))),
			   p(div(class='col-xs-11 col-sm-11 col-md-11 col-lg-11', html(\['<hr></hr>']))),

		section(p(div([class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11 degraded container-planes'], p(['AQUi VAN TODAS LAS PREGUNTAS DE LoGICA',p('[no, falso, implica, falso]'),p('[no, verdad, implica, falso]'),p('[no, falso, implica, verdad]'),p('[no, verdad, implica, verdad]')]))))


	      ])).

% **********************************************************************
% Mediante "temas" se genera la seccion de la interfaz donde se da la
% bienvenida al usuario y se muestran todos los temas de matematicas
% (pagina principal).


temas --> html(form([style='align: left; margin: 0px 0px 0px 100px;'], [
		section(p(div([class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11 degraded container-planes'], p(['BIENVENIDOS AL CURSO DE MATEMaTICAS DISCRETAS',p('Parrafo 1'),p('Parrafo 2'),p('Parrafo 3')])))),
		p(div(class='col-xs-11 col-sm-11 col-md-11 col-lg-11', html(\['<br></br>']))),
		p(div([class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11',style='margin:0px;'], h4(class='venacti',b('Temas del Curso')))),
			   p(div(class='col-xs-11 col-sm-11 col-md-11 col-lg-11', html(\['<hr></hr>']))),

		section(p(div([class='form-group col-xs-11 col-sm-11 col-md-11 col-lg-11 degraded container-planes'], p(['AQUi VAN TODOS LOS TEMAS EN UNA TABLA',
		p(div(class='form-group col-xs-5 col-sm-5 col-md-5 col-lg-5',

	input([name=submit, type=submit, class='btn btn-md btn-success btn-block', value='Logica', formaction='/logica', formmethod='POST'])


		       ))  ]))))


	      ])).

% **********************************************************************
% Mediante "foot" se genera el pie de la pagina. En esta seccion se
% presenta un boton para subir a la parte de arriba de la pagina, los
% datos de los desarrolladores de la misma y, por ultimo, la fecha y
% hora actual.

foot --> html(footer([p(div([id='subir',class='text-right'],input([name='img-subir', type=image,  src='f/icon_top.png', onclick='window.location.href = "#top";', alt='Subir']))),
		     p(div([class='text-center'],'Logica y Matematicas para Simulacion © 2015 - Universidad de Los Andes / Derechos Reservados.')),
		     p(div([class='text-center'],'Diseñado por Carlos Santiago y Luis Sanchez. Generado desde Prolog por Ixhel Mejias.')),

		      div([class='text-left'],html(\['<hr></hr>','<script>document.write(Date());</script>']))


						    ])).


% **********************************************************************
% * "Programa para levantar un servicio web del                        *
% * proyecto ULAnix mathematica. Es software libre."                   *
% * Fuente: servicio.pl version alfa 0.1 2014-10-16                    *
% * Editado por Ixhel Mejias                                           *
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
% Contenido de la pagina de preguntas y respuestas (pr).

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
	    % p([style='font-size: 20pt', title='Respuestas'], 'Respuestas: '),
	    % p([style='font-size: 26pt', title='Respuesta'], R),
	    tabla(R), 
	    \['<br></br>'],
	    p(div(class='form-group col-xs-5 col-sm-5 col-md-5 col-lg-5',
	    input([name=submit, type=submit, class='btn btn-md btn-success btn-block', value='Volver'])))]),
	    \foot
	    ]).

tabla(T) -->
     html(table([tr([th("Respuestas")]),rows(T)])).


rows([]) --> [].
rows([H |T]) -->
      html(tr([p(td(H))])),
      rows(T).


procesa(Data, Consulta, Respuestas) :-
	member(p=Consulta, Data),
	member(r=Res, Data), 
	((Consulta\='', Res='') -> buscar_resp(Consulta, Respuestas) ; true).
	%(Res\='' -> (read_term_from_atom(Res, Respuesta, []), pr(_,Pregunta, Respuesta, _, _), Respuestas = [Pregunta, Respuesta]) ; true).
        

% **********************************************************************
% * Fuente: servicio.pl version alfa 0.1 2014-10-16                    *
% * Editado por Ixhel Mejias                                           *
% **********************************************************************


% ?- server(5000).

