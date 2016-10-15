var slug = function(str) {
    var $slug = '';
    var trimmed = $.trim(str);
    $slug = trimmed.replace(/[^a-z0-9-]/gi, '.').
    replace(/-+/g, '.').
    replace(/^-|-$/g, '');
    return $slug.toLowerCase();
}

var arraySlugs = [
  'que.color.caballo.bolivar',
  'que.maxima',
  'que.matematica.discretas',
  'tipo.conjunto',
  'cual.tipo.conjunto',
  'cuando.nacio.bolivar'
];

var SimpleSlugs = [
  'que',
  'cuando',
  'cual',
  'tipo',
  'nacio',
  'color',
  'caballo',
  'bolivar',
  'maxima',
  'matematica',
  'discretas',
  'conjunto',
  'opciones',
  'nacimiento',
]


$('#searchAction').on('click',function(){
  $(".dataResults").empty();
  var sluggedWord = slug($('#search').val());
alert(sluggedWord);
  var questionSearching = '';
  $.each(SimpleSlugs, function (index, value) {
    if(sluggedWord.match(value)){
      questionSearching = questionSearching + value + '.';
    }
  });

  var searching = questionSearching.substring(0, questionSearching.length-1);
  alert(searching);
  if(searching.length > 1){
    if(sluggedWord.match(searching)>-1){

      var Preguntas = jQuery.parseJSON(pr);

$.each(Preguntas.pregunta , function (index, value){
  if(searching.match(value.slug)){
    $(".dataResults").append(
      '<div class="card horizontal"> ' +
      '  <div class="card-image">    ' +
      '    <img src="http://lorempixel.com/100/190/nature/6"> ' +
      '  </div>                      ' +
      '  <div class="card-stacked">  ' +
      '    <div class="card-content">' +
      '      <h5> Pregunta: ' + value.pregunta +'         <h5/>     ' +
      '      <p> Respuesta: '+ value.respuesta+'</p> ' +
      '    </div>' +
      '    <div class="card-action">' +
      '      <a href="#" class="blue-text">Leer mas...</a>' +
      '    </div>' +
      '  </div>  ' +
      '</div>'
    );
    }
} );
    }
  }
});
