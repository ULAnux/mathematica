// app/routes.js

module.exports = function(app, passport, pengin, fs){

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

  // profile
  app.get('/profile', isLoggedIn, function(req, res) {
    res.render('profile', {
      user : req.user, // obtiene el usuario de la sesión y lo pasa al template
      question: 'Nothing',
      answer: 'undefined',
      answerObject: 'undefined'
    });
  });

  //post al realizar una pregunta
  app.post('/profile', isLoggedIn, function(req,res){

    //si existe una pregunta
    if(req.body.inputToProlog.length > 0 &&  (req.body.inputToProlog.search('X') != (-1))){
      //
      var readStream = fs.readFileSync("./prolog/0000.pl", 'utf8');
      
      console.log('inputToProlog');
      //creando objeto pengine
      var m = new pengin({
            server: "http://localhost:3030/pengine",
            sourceText: readStream,
            format: "json",
            chunk: 50,
            //ask: "pr(0000-1, [color, caballo, blanco, 'Simón'], X, 20/20, [anonimo]).",
            ask: req.body.inputToProlog,
            destroy: true,
        }).on('success', function(result){
                      
                    
            var responseAlgebra = result.data[0].X.forEach(function(item) {
            
            if(typeof item == "string") {
              res.render('profile', {
                user : req.user,  // obtiene el usuario de la sesión y lo pasa al template
                question: req.body.inputToProlog,
                answer: "X = " + item,
                answerObject: JSON.stringify(result.data)
              });
          }
          else {
            var resu = printResult(item);
            res.render('profile', {
                        user : req.user,  // obtiene el usuario de la sesión y lo pasa al template
                        question: req.body.inputToProlog,
                        answer: "X = [" + resu.substring(1, resu.length-1) + "]",
                        answerObject: JSON.stringify(result.data)
                      });
          }
        });
                      
                                          }).on("error", function(error){

                      console.log(error.data);
                        res.render('profile', {
                          user : req.user,  // obtiene el usuario de la sesión y lo pasa al template
                          question: req.body.inputToProlog,
                          answer: error.data
                        });

                    });

        //interpretation a string del JSON que viene de prolog
  
        var printItems = function(item) {
          if(typeof item == "string") return ("X = " + item);
          else {
            var res = printResult(item);
            return ("X = [" + res.substring(1, res.length-1) + "]");
          }
        }

        var printResult = function(item) {
          var ret = new String();
          if(typeof item.args[0] != "string" ) ret += "(" + printResult(item.args[0]);
          else ret += "(" + item.args[0];

          if(typeof item.args[1] != "string") ret += item.functor + printResult(item.args[1]) + ")";
          else ret += item.functor + item.args[1] + ")";

          return ret;
        }

        //m.destroy();

    //si no hay pregunta
    }else{
      res.render('profile', {
      user : req.user, // obtiene el usuario de la sesión y lo pasa al template
      question: req.body.inputToProlog,
      answer: 'escriba algo!, quizas no hallas colocado la X, LOL...!! :V',
      answerObject: 'undefined'
    });
    }

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
};
