// server.js

// obtener los modulos
var Pr  = require('./app/models/pr');
var express  = require('express');
var app      = express();
var port     = process.env.PORT || 10000;
var mongoose = require('mongoose');
var passport = require('passport');
var flash    = require('connect-flash');
var expressflash = require('express-flash');
var nodemailer = require('nodemailer');
var fs       = require('fs');
var https    = require('https');
var pengin = require("pengines");
var async = require("async");
var crypto = require("crypto");

var morgan       = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser   = require('body-parser');
var session      = require('express-session');

// obtener la configuracion de la base de datos
var configDb = require("./config/database.js");

require('./config/passport.js')(passport);

// inicializacion
mongoose.connect(configDb.url);

app.use(morgan('dev')); // loggear todo
app.use(cookieParser()); // cookie para la session
app.use(bodyParser()); // informacion de las formas
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("node_modules/bootstrap/dist/"));
app.use(express.static("public"));

app.set('view engine', 'ejs');

// inicializacion de passport
app.use(session({ secret: 'tellmeyoursecrets' })); // secreto de sesión
app.use(passport.initialize());
app.use(passport.session());
app.use(flash()); // para el manejo de mensajes de error
app.use(expressflash());
// rutas
require('./app/routes.js')(app, passport, pengin,fs, nodemailer, async, crypto);

// ejecución
https.createServer({
  key: fs.readFileSync('./config/key.pem'),
  cert: fs.readFileSync('./config/cert.pem')
}, app).listen(port);

//app.listen(port);

console.log('Escuchando en https://localhost:' + port);


/****************************************
Funcion para extraer de la carpeta Prolog
todas las pl que inician con cero e 
insertarlas en mongo con modelo pr.js
@utor: Yenifer Ramírez
*****************************************/
fs.readdir('./prolog', (err,files) => {
	files.forEach( file => {
		if (file[0]=='0') {
			let fileContent = fs.readFileSync(`./prolog/${file}`, 'utf-8').split('\n');
			fileContent.forEach( line => {
				//Filtrado de un Pr o Rp completa
				if ((line[0]=='p' && line[1]=='r' && line[2]=='(') || (line[0]=='r' && line[1]=='p' && line[2]=='(')){
					//guardar tipo, si es pr o rp
					let tipo = '';
					tipo +=line[0]; tipo +=line[1];
					//Filtrado de puntaje de pr
					let puntaje = '';
					for(i = 0; i <= line.length; i++ ) {
						if((line[i] > 0 && line[i]< 10) && (line[i+1] > -1  && line[i+1]< 10) && (line[i+2] > -1  && line[i+2]< 10) && line[i+3]==='/') {
							puntaje += line[i];
							puntaje += line[i+1];
							puntaje += line[i+2];
							puntaje += line[i+3];
							puntaje += line[i+4];
							puntaje += line[i+5];
							puntaje += line[i+6];
							puntaje += 'ç';
						}
						if((line[i] > 0 && line[i]< 10) && (line[i+1] > -1  && line[i+1]< 10) && line[i+2]==='/') {
							puntaje += line[i];
							puntaje += line[i+1];
							puntaje += line[i+2];
							puntaje += line[i+3];
							puntaje += line[i+4];
							puntaje += 'ç';
						}
						if((line[i] > -1 && line[i]< 10) && line[i+1]==='/') {
							puntaje += line[i];
							puntaje += line[i+1];
							puntaje += line[i+2];
							puntaje += line[i+3];
							puntaje += 'ç';
						}
					}
					var puntaje_parte= puntaje.split("ç");

					//Filtrado de id de pr
					let id_pr = '';
					let parentesis = false;
					line.split('').forEach(char => {
						if (parentesis){
							if(char === ',') {
								id_pr += 'ç';
								parentesis =false;
								return;
							}
							else {
								id_pr += char;
							}
						}
						else {
							if(char === '('){
								parentesis = true;
							}
						}
					});
					var id_parte= id_pr.split("ç");
					
					//Filtrado de pregunta, respuesta y autor
					let pregunta = '';
					let corchete = false;
					var count_abierto = 0;
					var count_cerrado = 0;

					line.split('').forEach(char => {
					  if(char == '[') 
					  	count_abierto += 1;
						if(char === ']') 
					  	count_cerrado += 1;

						if(corchete){
							if(char === ']') {
									if (count_abierto == count_cerrado) {
										pregunta += 'ç';
										corchete = false;
										return;
									}
									else {
										pregunta += char;
									}
							}
							else {
								pregunta += char;
							}
						}
						else {
							if(char === '['){
								corchete = true;
							}
						}
					});
					var parte= pregunta.split("ç");
					//Insertar en Base de datos con modelo pr.js 
					Pr.find({pr_rp: line}, (err, docs) => {
						if(err) throw err;
						if(docs.length === 0 && line.length <= 1400){
							let prNueva = new Pr();
							prNueva.file = file;
							prNueva.id = id_parte[0];
							prNueva.tipo = tipo;
							prNueva.pr_rp = line;
							prNueva.pregunta = parte[0];
							prNueva.respuesta = parte[1];
							prNueva.puntaje = puntaje_parte[0];
							prNueva.autor = parte[2];
							prNueva.save(err => {
								if(err) throw err;
								
							})
						}
					})					
				}
			});
		}
	});
})
/*Pr.find({ $text: { $search: "\"" + "color" + "\"" } },
        function (err, docs) {
        	let perro=docs[0].pregunta;
        	console.log(perro);


 })*/
