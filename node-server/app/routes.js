// app/routes.js

module.exports = function(app, passport){

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
      user : req.user // obtiene el usuario de la sesión y lo pasa al template
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
};
