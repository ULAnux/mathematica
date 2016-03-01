// app/models/user.js
// cargando lo que se necesita
var mongoose = require('mongoose');
var bcrypt   = require('bcrypt-nodejs');

// define el esquema
var userSchema = mongoose.Schema({

    local            : {
        email        : String,
        password     : String,
    },
    facebook         : {
        id           : String,
        token        : String,
        email        : String,
        name         : String
    },
    twitter          : {
        id           : String,
        token        : String,
        displayName  : String,
        username     : String
    },
    google           : {
        id           : String,
        token        : String,
        email        : String,
        name         : String
    }

});

// metodos ======================
// generador de hash
userSchema.methods.generateHash = function(password) {
    return bcrypt.hashSync(password, bcrypt.genSaltSync(8), null);
};

// revisar si una contraseña es valida
userSchema.methods.validPassword = function(password) {
    return bcrypt.compareSync(password, this.local.password);
};

// exporta el modelo de usuario
module.exports = mongoose.model('User', userSchema);
