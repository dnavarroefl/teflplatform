

	var user = {}
	var responses = [] 

	function id() {
		var name = prompt('Please enter your NAME.')
		user.name = name
	}
	id();	

	function matchGame() {
		var firstMatch = prompt('How many word matches can you find with the verb PLAY? Enter one of the words from the list: "football","ball", "dead", "ground", "around", "chess", "music", "fight", "hockey", "the trumpet", "the piano".')

		  firstMatch = firstMatch.toLowerCase();

			  switch (firstMatch) {
			     	case 'football':
			     	case 'ball':
			     	case 'ground':
			     	case 'around':
			     	case 'chess':
			     	case 'music':
			     	case 'hockey':
			     	case 'the trumpet':
			     	case 'the piano':
			    alert('Correct answer!');
//Necesito controlar el flujo para contabilizar los puntos por respuesta correcta y restar por error. Tendríamos 11 intentos, una por palabra.
			    break;
			    	case 'dead':
			    	case 'fight':
			    alert('Wrong answer!');
			    	default: 
			    alert('Try again');
			    return matchGame();
			  }
		  responses.push(firstMatch);
		}

	matchGame();   

/* Tenemos que controlar el desarrollo del juego con 11 intentos por jugador y el  recuento de los puntos por aciertos y errores.

*/
	function evaluate(responses) {

		var total1 = []
		var total2 = []

		total1.push(responses);
		total2.push(responses);

		user = total1;
		user = total2;

		showResults();
	}

	function showResults(responses) {

		alert('You wrote the following words:' + user);
		}

	alert('Correct matches: PLAY + football, ball, ground, around, chess, music, fight, hockey, the trumpet, the piano');

	evaluate([responses]);
	
/*
var play
play = ["football","ball", "dead", "ground", "around", "chess", "music", "fight", "hockey", "the trumpet", "the piano"];

var fly 
fly = ["gonna", "low", "plane", "plane", "around", "away", "fly", "boy", "a kite", "zipper", "bird"]

var run 
run = ["paint", "ball", "way", "down", "away", "a light", "water", "the office", "down the road", "the piano"];
*/


