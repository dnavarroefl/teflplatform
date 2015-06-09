
	$('td#doRight1').on('click', function() {
		alert('Correct!');
	});

	$('td#doRight1').on('click', function() {
		alert('Correct!');
	});

	$('td#doRight2').on('click', function() {
		alert('Correct!');
	});

	$('td#doRight3').on('click', function() {
		alert('Correct!');
	});

	$('td#doRight4').on('click', function() {
		alert('Correct!');
	});

	$('td#doRight5').on('click', function() {
		alert('Correct!');
	});

	$('td#doRight6').on('click', function() {
		alert('Correct!');
	});

	$('td#doRight7').on('click', function() {
		alert('Correct!');
	});

	$('td#doRight8').on('click', function() {
		alert('Correct!');
	});

	$('td#doRight9').on('click', function() {
		alert('Correct!');
	});

	$('td#doWrong1').on('click', function() {
		alert('Wrong!');	
	});

	$('td#doWrong2').on('click', function() {
		alert('Wrong!');	
	});

	$('td#doRight1').on('click', function() {
		$('td#doRight1').css('background-color', 'rgb(73,203,214)');
	});

	$('td#doRight2').on('click', function() {
		$('td#doRight2').css('background-color', 'rgb(73,203,214)');
	});

	$('td#doRight3').on('click', function() {
		$('td#doRight3').css('background-color', 'rgb(73,203,214)');
	});

	$('td#doRight4').on('click', function() {
		$('td#doRight4').css('background-color', 'rgb(73,203,214)');
	});

	$('td#doRight5').on('click', function() {
		$('td#doRight5').css('background-color', 'rgb(73,203,214)');
	});

	$('td#doRight6').on('click', function() {
		$('td#doRight6').css('background-color', 'rgb(73,203,214)');
	});

	$('td#doRight7').on('click', function() {
		$('td#doRight7').css('background-color', 'rgb(73,203,214)');
	});

	$('td#doRight8').on('click', function() {
		$('td#doRight8').css('background-color', 'rgb(73,203,214)');
	});

	$('td#doRight9').on('click', function() {
		$('td#doRight9').css('background-color', 'rgb(73,203,214)');
	});

	$('td#doWrong1').on('click', function() {
		$('td#doWrong1').css('background-color', 'red');
	});

	$('td#doWrong2').on('click', function() {
		$('td#doWrong2').css('background-color', 'red');
	});

/*
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
<script type="text/javascript">

	var user = {}
	var responses = [] 
	var turn = []

	function id() {
		var name = prompt('Please enter your NAME.');
		user.name = name
	}

	id();	
	
	function playerTurn() {
		var turn; 
		for (turn = 0; turn < 11; turn++) {
			alert('How many word matches can you find with the verb PLAY? Enter one of the words from the list: "football","ball", "dead", "ground", "around", "chess", "music", "fight", "hockey", "the trumpet", "the piano".')
			}
	}
	playerTurn(); 

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
		}
	evaluate([responses]);

 </script>
*/



