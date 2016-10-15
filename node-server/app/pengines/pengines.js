var pengin = require('pengines');

module.exports = function(fs){

	var readStream = fs.readFileSync("./prolog/0000.pl", 'utf8');

	/*
	var m = new pengin({
		server: "http://localhost:3030/pengine",
	    chunk: 3,
	    sourceText: readStream,
	    ask: 'pr([a*(b+c),=], X).' 
	});

	var interpretationObject = function(object){
		var string;
		if( (typeof object === "object") && (object !== null) ){
			for(var element in object){
				console.log("Elemento objeto: "+element+"\n");
				interpretationObject(element);
			}	
		}else{
				console.log("Elemento no objeto: "+element+"\n");
				string+=element;
		}
		console.log(string);
	}

	m.on('success', function(result){
		var count = 0;
		console.log('Resultado:');
		for(var element in result.data){
			count++;
			console.log('-Elemento: '+ element + '\n');
			for(var array in result.data[element]){
				console.log('--Elemento, mas bajo: '+ array + '\n');
				for(var prop in result.data[element][array]){
				console.log('---Elemento, mas mas bajo: '+ prop + '\n');
					for(var func in result.data[element][array][prop]){
						console.log('----Elemento, mas mas mas bajo: '+ func + '\n');
						for(var el in result.data[element][array][prop][func]){
							for(var el1 in result.data[element][array][prop][func][el]){
								for(var el2 in result.data[element][array][prop][func][el][el1]){
									console.log(result.data[element][array][prop][func][el][el1][el2]);
								}
							}
						}
					}
				}
			}
		}
		console.log(count);
		//interpretationObject(result.data);
		console.log(result.data);
	});
	*/


	


	var m = new pengin({
	        server: "http://localhost:3030/pengine",
	        sourceText: readStream,
	        format: "json",
	        chunk: 2,
	        ask: "pr(0000-1, [color, caballo, blanco, 'Simón'], X, 20/20, [anonimo]).",
	        destroy: false,
	    }).on('success', function(result){

										//result.data[0].X.forEach(printItems);
										console.log(result.data);
										return result.data;
									}).on("error", function(error){console.log(error.data);});

//interpretation a string del JSON que viene de prolog
	
	var printItems = function(item) {
	  if(typeof item == "string") console.log("X = " + item);
	  else {
	    var res = printResult(item);
	    console.log("X = [" + res.substring(1, res.length-1) + "]");
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

	var fromProlog = m;

	return fromProlog;
};