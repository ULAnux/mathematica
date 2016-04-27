// config/passport.js

// cargando lo que se necesita
var LocalStrategy = require('passport-local').Strategy;

// cargando el modelo de usuario
var User = require('../app/models/user');     

// exportando la función
module.exports = function(passport) {

  // usado para crear el usuario para la sesión
  passport.serializeUser(function(user, done) {
    done(null, user.id);
  });

  // usado para eliminar el usuario de la sesión
  passport.deserializeUser(function(id, done) {
    User.findById(id, function(err, user) {
      done(err, user);
    });
  });

  // estrategia de ingreso local
  passport.use('local-login', new LocalStrategy({
    // por defecto vienen los campos username y password pero para trabajar con email hay que cambiarlo
    usernameField : 'email',
    passwordField : 'password',
    passReqToCallback : true // pasar la peticion al callback
  },
  function(req, email, password, done) { // callback con email y usuario

    // busca un usuario que tenga el email de la forma
    // y se revisa si existe
    User.findOne({ 'local.email' :  email }, function(err, user) {
      // si hay un error retornelo
      if (err)
      return done(err);

      // si no se encontro un usuario con el email retorna un mensaje
      if (!user)
      return done(null, false, req.flash('loginMessage', 'Usuario no encontrado.')); 

      // si se encontro se evalua la contraseña, si es falsa retorna un mensaje
      if (!user.validPassword(password))
      return done(null, false, req.flash('loginMessage', 'Oops! Contraseña incorrecta.'));

      // si todo esta bien retorne el usuario
      return done(null, user);
    });

  }));

// estrategia de busqueda para recuperacion de contrasenia
  passport.use('local-forgot', new LocalStrategy({
    // por defecto vienen los campos username pero para trabajar con email hay que cambiarlo
    usernameField : 'email',
    passReqToCallback : true // pasar la peticion al callback
  },
  function(req, email, done) { // callback con email y usuario

    // busca un usuario que tenga el email de la forma
    // y se revisa si existe
    User.findOne({ 'local.email' :  email }, function(err, user) {
      // si hay un error retornelo
      if (err)
      return done(err);

      // si no se encontro un usuario con el email retorna un mensaje
      if (!user)
      return done(null, false, req.flash('forgotMessage', 'Usuario no encontrado.')); 

      // si todo esta bien retorne el usuario
      return done(null, user);
    });

  }));
  
  // estrategia de registro local
  passport.use('local-signup', new LocalStrategy({

    usernameField : 'email',
    passwordField : 'password',
    passReqToCallback : true
  },
  function(req, email, password, done) {

    // asincrono
    // User.findOne no se ejecutara a menos que se retorne algo
    process.nextTick(function() {

      // se busca al usuario para ver si el email ya existe
      User.findOne({ 'local.email' :  email }, function(err, user) {
        // si hay error retornelo
        if (err)
        return done(err);

        // si hay un usuario con ese email retorne un mensaje
        if (user) {
          return done(null, false, req.flash('signupMessage', 'Ese email ya ha sido registrado.'));
        }

        // si no
        else {
          // se crea el usuario
          var newUser = new User();

          // se inicializan las credenciales
          newUser.local.email    = email;
          newUser.local.password = newUser.generateHash(password);

          // se guarda
          newUser.save(function(err) {
            if (err)
            throw err;
            return done(null, newUser);
          });
        }

      });

    });

  }));

};
