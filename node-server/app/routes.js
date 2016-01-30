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
      answer: 'undefined'
    });
  });

  app.post('/profile', isLoggedIn, function(req,res){

    if(req.body.inputToProlog != 'undefined'){
      var readStream = fs.readFileSync("./prolog/0000.pl", 'utf8');
      console.log('inputToProlog');
      var m = new pengin({
            server: "http://localhost:3030/pengine",
            sourceText: readStream,
            format: "json",
            chunk: 50,
            //ask: "pr(0000-1, [color, caballo, blanco, 'Simón'], X, 20/20, [anonimo]).",
            ask: req.body.inputToProlog,
            destroy: false,
        }).on('success', function(result){
                      console.log(result.data);

                      res.render('profile', {
                        user : req.user,  // obtiene el usuario de la sesión y lo pasa al template
                        answer: result.data
                      });

                    }).on("error", function(error){

                      console.log(error.data);
                        res.render('profile', {
                          user : req.user,  // obtiene el usuario de la sesión y lo pasa al template
                          answer: error.data
                        });

                    });

    }else{
      res.redirect('profile', {
      user : req.user, // obtiene el usuario de la sesión y lo pasa al template
      answer: 'undefined'
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
