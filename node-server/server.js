// server.js

// obtener los modulos
var express  = require('express');
var app      = express();
var port     = process.env.PORT || 8080;
var mongoose = require('mongoose');
var passport = require('passport');
var flash    = require('connect-flash');
var fs       = require('fs');
var https    = require('https');

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
app.use(express.static("node_modules/bootstrap/dist/"));

app.set('view engine', 'ejs');

// inicializacion de passport
app.use(session({ secret: 'tellmeyoursecrets' })); // secreto de sesión
app.use(passport.initialize());
app.use(passport.session());
app.use(flash()); // para el manejo de mensajes de error

// rutas
require('./app/routes.js')(app, passport);

// ejecución
https.createServer({
  key: fs.readFileSync('./config/key.pem'),
  cert: fs.readFileSync('./config/cert.pem')
}, app).listen(port);

console.log('Escuchando en el puerto ' + port);
