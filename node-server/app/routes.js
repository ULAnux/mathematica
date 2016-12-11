// app/routes.js
var Pr = require('../app/models/pr');
var User = require('../app/models/user');
var recovery = require("../config/passwordRecoveryAccount");
var g_opc;
module.exports = function(app, passport, pengin, fs, nodemailer, async, crypto){

  // index
  app.get('/', function(req, res) {
    res.render('index');
  });

  // login
  app.get('/login', function(req, res) {
    // renderea la pagina y le pasa un mensaje de error si lo hay
    res.render('login', { message: req.flash('loginMessage') });
  });



  // procesamiento del login o ingreso
  app.post('/login', passport.authenticate('local-login', {
    successRedirect : '/profile', // redirecciona al perfil si pasa
    failureRedirect : '/login', // redirecciona de vuelta si falla
    failureFlash : true // habilita mensajes de error
  }));

  // signup
  app.get('/signup', function(req, res) {
    // render the page and pass in any flash data if it exists
    res.render('signup', { message: req.flash('signupMessage') });
  });

  // procesamiento del signup o registro
  app.post('/signup', passport.authenticate('local-signup', {
    successRedirect : '/profile', // redirecciona al perfil si pasa
    failureRedirect : '/signup', // redirecciona de vuelta si falla
    failureFlash : true
  }));

  //olvido de contrasenia
  app.get('/forgot', function(req, res) {
    res.render('forgot', {
      messages: req.flash(),
      user: req.user// obtiene el usuario de la sesión y lo pasa al template
    });
  });

  //////////////////REVISARR ESTO/////////////////
  //procesamiento para el envio del mail en la contrasenia
  /* */
    app.post('/forgot', function(req, res, next) {
    async.waterfall([
      function(done) {
        crypto.randomBytes(20, function(err, buf) {
          var token = buf.toString('hex');
          done(err, token);
        });
      },
      function(token, done) {
        User.findOne({ 'local.email': req.body.email }, function(err, user) {
          if (!user) {
            req.flash('error', 'No account with that email address exists.');
            return res.redirect('/forgot');
          }
          user.local.resetPasswordToken = token;
          user.local.resetPasswordExpires = Date.now() + 3600000; // 1 hour

          user.save(function(err) {
            done(err, token, user);
          });
        });
      },/*//////////////  SE PODRIA MODIFICAR PARA USAR EL PASSPORT //////////////////
      passport.authenticate('local-forgot', {
        successRedirect : '/', // redirecciona al inicio si pasa
        failureRedirect : '/forgot', // redirecciona de vuelta si falla
        failureFlash : true
      }),*/

      function(token, user, done) {
          console.log("intentando conectar......");
          //hay que usar tecnologia de desarrollo OAuth 2.0, solicitar credenciales,
          //para usar el correo Gmail en el envio de correos
          //http://stackoverflow.com/questions/19877246/nodemailer-with-gmail-and-nodejs
        var smtpTransport = nodemailer.createTransport(
          /*////////////////////configuracion Mail Ula ///////////////////
          smtpConfig = {
              host: 'smtp-mail.ula.com',
              port: 465,
              secure: true, // use SSL
              auth: {
                  user: 'user@ula.com',
                  pass: 'pass'
              }
          },

          poolConfig = {
              pool: true,
              host: 'smtp-mail.gmail.com',
              port: 465,
              secure: true, // use SSL
              auth: {
                  user: 'user@ula.com',
                  pass: 'pass'
              }
          },

          directConfig = {
              name: 'localhost:8080' // must be the same that can be reverse resolved by DNS for your IP
          }*/

          smtpConfig = 'smtps://'+ recovery.email + ':' + recovery.pass + "@smtp.gmail.com",
          poolConfig = 'smtps://' + recovery.email + ':' +  recovery.pass + '@smtp.gmail.com/?pool=true',
          directConfig = 'direct:?name=localhost:8080'

        );
          console.log("intentando verificar......");

        smtpTransport.verify(function(error, success) {
           if (error) {
                console.log(error);
           } else {
                console.log('Server is ready to take our messages');
           }
        });

        var mailOptions = {
          to: user.local.email,
          from: 'user@gmail.com',
          subject: 'Node.js Password Reset',
          text: 'You are receiving this because you (or someone else) have requested the reset of the password for your account.\n\n' +
            'Please click on the following link, or paste this into your browser to complete the process:\n\n' +
            'https://' + req.headers.host + '/reset/' + token + '\n\n' +
            'If you did not request this, please ignore this email and your password will remain unchanged.\n'
        };
        smtpTransport.sendMail(mailOptions, function(err) {
          req.flash('info', 'An e-mail has been sent to ' + user.local.email + ' with further instructions.');
          done(err, 'done');
        });
      }
    ], function(err) {
      if (err) return next(err);
      res.redirect('/forgot');
    });
  });

  //RESET PASSWORD
  ////info extraida de :
  ///http://sahatyalkabov.com/how-to-implement-password-reset-in-nodejs/
  app.get('/reset/:token', function(req, res) {
    User.findOne({ "local.resetPasswordToken": req.params.token, "local.resetPasswordExpires": { $gt: Date.now() } }, function(err, user) {
      if (!user) {
        req.flash('error', 'Password reset token is invalid or has expired.');
        return res.redirect('/forgot');
      }
      res.render('reset', {
        user: user
      });
    });
  });

  app.post('/reset/:token', function(req, res) {
    if (req.body.password != req.body.confirm){
      req.flash('error','Contraseñas no coinciden');
      res.redirect('/');
    }
    User.findOne({ "local.resetPasswordToken": req.params.token, "local.resetPasswordExpires": { $gt: Date.now() } }, function(err, user) {
      if (!user) {
        req.flash('error', 'Password reset token is invalid or has expired.');
        return res.redirect('/');
      }

      user.local.password = user.generateHash(req.body.password);
      user.local.resetPasswordToken = undefined;
      user.local.resetPasswordExpires = undefined;

      user.save(function(err) {
        if(err) console.error(err);
        res.redirect("/login");

        /*req.logIn(user, function(err) {
        done(err, user);
      });*/
    });
  });

  });

  // profile
  app.get('/profile', isLoggedIn, function(req, res) {
    res.render('profile', {
      user : req.user, // obtiene el usuario de la sesión y lo pasa al template
      question: 'Nothing',
      answer: 'undefined',
      answerObject: 'undefined'
    });
  });

  //Modulo Ayuda a Pitagoras
  /////////////////////////////////////////////////////////////////////////////////////////////////////


  app.post('/ayudaPitagoras', isLoggedIn, function(req,res){
  
  });
 
   app.post('/IntAyudaPitagoras', isLoggedIn, function(req,res){
  });

  ///////////////////////////////////////////////////////////////////////////////////////////////////// 
  // Aporte de Ender Puentes

/***********************************
Post al hacer una pregunta, depende
de server.js y pr.js
Editado por: Yenifer Ramírez
************************************/
  /*app.post('/profile', isLoggedIn, function(req,res){

    //si existe una pregunta
    if(req.body.inputToProlog.length > 0){
      Pr.find({ $text: { $search: "\"" + req.body.inputToProlog + "\"" } },
        function (err, docs) {

          //si no hay algun dato que coincida con la consulta
          if(err || docs.length === 0){
            res.render('profile', {
              user : req.user, // obtiene el usuario de la sesión y lo pasa al template
              question: req.body.inputToProlog,
              answer: 'Tu pregunta no coincide con alguna de nuestras preguntas, intenta de otra forma.',
              answerObject: 'undefined'
            });
          }
          //con algun resultado que coincida con nuestro pr_rp
          if(docs.length != 0){
            //guardando datos encontrados
            let archivo=docs[0].file;
            let id=docs[0].id;
            let tipo=docs[0].tipo;
            let pr_rp=docs[0].pr_rp;
            let pregunta=docs[0].pregunta;
            let respuesta=docs[0].respuesta;
            let puntaje=docs[0].puntaje;
            let autor=docs[0].autor;

            var readStream = fs.readFileSync(`./prolog/${archivo}`, 'utf8');

            //creando objeto pengine
            var m = new pengin({
                  server: "http://localhost:3030/pengine",
                  sourceText: readStream,
                  format: "json",
                  chunk: 50,
                  ask: "" + tipo + "("+ id +", ["+ pregunta +"], X, "+ puntaje +", ["+ autor +"]).",
                  //ask: "pr(0000-1, [color, caballo, blanco, 'Simón'], X, 20/20, [anonimo]).",
                  destroy: true,
              }).on('success', function(result){

                  var responseAlgebra = result.data[0].X.forEach(function(item) {
                  if(typeof item == "string") {
                    res.render('profile', {
                      user : req.user,  // obtiene el usuario de la sesión y lo pasa al template
                      question: pregunta,
                      answer: "X = " + item,
                      answerObject: JSON.stringify(result.data)
                    });
                }
                else {
                  var resu = printResult(item);
                  res.render('profile', {
                              user : req.user,  // obtiene el usuario de la sesión y lo pasa al template
                              question: pregunta,
                              answer: "X = [" + resu.substring(1, resu.length-1) + "]",
                              answerObject: JSON.stringify(result.data)
                            });
                }
              });

                                                }).on("error", function(error){

                            console.log(error.data);
                              res.render('profile', {
                                user : req.user,  // obtiene el usuario de la sesión y lo pasa al template
                                question: pregunta,
                                answer: error.data
                              });

                          });
          }
            //m.destroy();
      })
    //si no hay pregunta
    }else{
      res.render('profile', {
      user : req.user, // obtiene el usuario de la sesión y lo pasa al template
      question: req.body.inputToProlog,
      answer: 'No copiaste nada, intenta nuevamete.',
      answerObject: 'undefined'
    });
    }

  });*/
  // Post al hacer una pregunta, para hacer directo con mongo sin usar pengine
    app.post('/profile', isLoggedIn, function(req,res){
      if(req.body.inputToProlog.length > 0 ){
      Pr.find({ $text: { $search: req.body.inputToProlog } },
        (err, docs) => {
          if(err || docs.length === 0){
            res.render('profile', {
              user : req.user, // obtiene el usuario de la sesión y lo pasa al template
              question: req.body.inputToProlog,
              answer: 'Tu pregunta no coincide con alguna de nuestras preguntas, intenta de otra forma.',
              answerObject: 'undefined'
            });
          }
          if(docs.length != 0){
              res.render('profile', {
                // se muestras las 3 pegunta que mas coincide
                  user : req.user, // obtiene el usuario de la sesión y lo pasa al template
                  question: docs[0].pregunta,
                  answer: docs[0].respuesta,
                  answerObject: docs[0].pr_rp
              });
          }

        })
    }
  });

  // lecciones
  app.get('/lecciones', isLoggedIn, function(req, res) {
    res.render('lecciones', {
      user : req.user, // obtiene el usuario de la sesión y lo pasa al template
    });
  });

   app.get('/IntAyudaPitagoras', isLoggedIn, function(req, res) {
    res.render('IntAyudaPitagoras', {
      user : req.user, // obtiene el usuario de la sesión y lo pasa al template
    });
  });

  //

  
  //Modulo Ayuda a Pitagoras
  ////////////////////////////////////////////////////////////////////////////////////////////////////
  /*
  Ayuda a Pitagoras Versión beta
  Diseñado y Desarrollado por Ender Puentes C.I.V-25153102
  Aporte Diciembre-2016
  */
  
  app.get('/ayudaPitagoras/nivel:idNivel/pregunta:idPreg/pts:idPuntos', isLoggedIn, function(req, res) {
    
      var idNivel= req.params.idNivel;
      var idPuntos= req.params.idPuntos;     

      // Variable que determina el fin del juego

      var final = false;

      // Define segun el nivel el archivo a leer

      if (idNivel == 1)
      {
        var readStream = fs.readFileSync("./prolog/level1.pl", 'utf8');
      }
      if (idNivel == 2)
      {
        var readStream = fs.readFileSync("./prolog/level2.pl", 'utf8');
      }
       if (idNivel == 3)
      {
        var readStream = fs.readFileSync("./prolog/level3.pl", 'utf8');
      }
       if (idNivel == 4)
      {
        var readStream = fs.readFileSync("./prolog/level4.pl", 'utf8');
      }
       if (idNivel == 5)
      {
        var readStream = fs.readFileSync("./prolog/level5.pl", 'utf8');
      }

      //Parseo del pr de prolog a pasar a la API pengines
       
      var str = (JSON.stringify(readStream));
      var i = str.search("000") - 3;
      var sub = str.substring(i);
      var split = sub.split(".");
      var idPreg = req.params.idPreg;
      var i2= split[idPreg].search("p");
      var j = split[idPreg].search("], ");
      var sub2 = split[idPreg].substring(i2,j);
      var pr = sub2+"], X, Y, Z).";

       //Parseo de la pregunta a mostrar en el formulario
        
      var question0 = pr.split("[");
      var question1 = question0[1].split("]");
      var question2 = question1[0].split(",,");
      var question3 = question2[0].replace(/', '/g," ");
      var questionFinal = question3.replace(/'/g,"");

      //creacion del objeto pengines

      var m = new pengin({
        server: "http://localhost:3030/pengine",
        sourceText: readStream,
        format: "json",
        chunk: 50,
        ask: pr ,
        destroy: true,
        }).on('success', function(result) {

          //llamar a la respuesta del pr parseado desde prolog
      
          var auxStr = '';
          var responseAlgebra = result.data[0].X.forEach(function(item) {
            
            if(typeof item == "string") {
              auxStr += ' ' + item;
            }
            else {
              auxStr = printResult(item);
            }

          });

          var Opts = auxStr.split("  ");

          //llamar a la puntuacion correspodiente a la respuesta correcta del pr parseado desde prolog

          var auxPts ='';
          var pts = result.data[0].Y.forEach(function(item) {
            
            if(typeof item == "string") {
              auxPts += ' ' + item;
            }
            else {
              auxPts = printResult(item);
            }

          });

          var ptsAux = auxPts.split("  ");
          
          //Acumulador de puntos del juego

          idPuntos = parseInt(idPuntos) + parseInt(ptsAux[0]);
        
          //Asignacion de posicion de las posibles respuestas de forma aleatoria en la renderización 
          
          var OptsItem = new Array();
          var num = [0,1,2,3];
          for (var i = 0; i < 4; i++) {
            var indice = Math.floor(Math.random()*num.length);
            OptsItem[i] = num[indice];
            num.splice( indice , 1);
          }
          
          res.render('ayudaPitagoras', {
            user : req.user, // obtiene el usuario de la sesión y lo pasa al template
            Opt1 : Opts[OptsItem[0]],
            Opt2 : Opts[OptsItem[1]],
            Opt3 : Opts[OptsItem[2]],
            Opt4 : Opts[OptsItem[3]],
            correcta : Opts[0],
            question : questionFinal,
            idPregAux: idPreg,
            idNivelAux: idNivel,
            idPuntosAux: idPuntos,
            finalAux: final
          });

        });

        // Incremento de pregunta o nivel          
        
        idPreg++;
        
        if(idPreg == split.length-1) {
          idPreg = 0;
          idNivel++;
        }   
        
        if (idNivel == 1 && idPreg == split.length-2) {
          final = true;
        }
    });

  ///////////////////////////////////////////////////////////////////////////////////////////////////// 
  // Aporte de Ender Puentes
  
  // ejercicios induccion
  app.get('/ejercicios/induccion', isLoggedIn, function(req, res) {
    res.render('ejeInduc', {
      user : req.user, // obtiene el usuario de la sesión y lo pasa al template
    });
  });

  // ejercicios combinatoria
  app.get('/ejercicios/combinatoria', isLoggedIn, function(req, res) {
    res.render('ejeComb', {
      user : req.user, // obtiene el usuario de la sesión y lo pasa al template
    });
  });

  // lecciones induccion
  app.get('/lecciones/induccion', isLoggedIn, function(req, res) {
    res.render('induccion', {
      user : req.user, // obtiene el usuario de la sesión y lo pasa al template
    });
  });

  // lecciones combinatoria
  app.get('/lecciones/combinatoria', isLoggedIn, function(req, res) {
    res.render('combinatoria', {
      user : req.user, // obtiene el usuario de la sesión y lo pasa al template
    });
  });

  // logout
  app.get('/logout', function(req, res) {
    req.logout();
    res.redirect('/');
  });
  // función que revisa si el usuario esta autenticado
  function isLoggedIn(req, res, next) {

    // si esta autenticado siga
    if (req.isAuthenticated())
    return next();

    // si no redireccione a la pagina principal
    res.redirect('/');
  }


     //interpretation a string del JSON que viene de prolog

  var printItems = function(item) {
    if(typeof item == "string") return ("X = " + item);
     else {
       var res = printResult(item);
       return ("X = [" + res.substring(1, res.length-1) + "]");
     }
   };

   var printResult = function(item) {
     var ret = "";
     if(typeof item.args[0] != "string" ) ret += "(" + printResult(item.args[0]);
     else ret += "(" + item.args[0];

     if(typeof item.args[1] != "string") ret += item.functor + printResult(item.args[1]) + ")";
     else ret += item.functor + item.args[1] + ")";

    return ret;
   };
};
