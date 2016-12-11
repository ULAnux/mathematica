/************************************
Modelo para crear el esquema de una 
colección para los Prs de prolog.
@utor: Yenifer Ramírez
*************************************/
// app/models/pr.js
// cargando lo que se necesita
var mongoose = require('mongoose');
var bcrypt   = require('bcrypt-nodejs');

// define el esquema
var prSchema = mongoose.Schema({
    
    file        : String,
    id         	: String,
    tipo       	: String,
    pr_rp       : String,
    pregunta    : { type: String, index: true },
    respuesta   : String,
    puntaje		: String,
    autor       : String

});
//Indexar un campo automaticamente
prSchema.index({ pr_rp: "text", type: -1 }); 

// exporta el modelo de pr
module.exports = mongoose.model('Pr', prSchema);
