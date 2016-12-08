var pengin = require('pengines');

module.exports = function(fs){

	var readStream = fs.readFileSync("../levels/level1.pl", 'utf8');
	
	var m = new pengin({
	        server: "http://localhost:3030/pengine",
	        sourceText: readStream,
	        format: "json",
	        chunk: 2,
	        ask: "pr(0008-1, ['¿','Qué', 'es', 'un', 'conjunto','?'], ['Es', 'un', 'grupo', 'de', 'objetos', 'finitos', 'o', 'infinitos', 'que', 'se', 'relacionan', 'entre', 'si']).",
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