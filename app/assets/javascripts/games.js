var user = {}
var responses = [] 

function id() {
	var name = prompt('Please enter your NAME')
	user.name= name
}

id();

function guessPlay() {
	var firstMatch=prompt("How many word matches can you find with the verb 'play'?")

	if (firstMatch === 'football') {
		firstMatch = true
		alert('Right match!');
	} else if (firstMatch) === 'fight') {
		firstMatch = false
		alert('Wrong match!');
	}	else {
		alert('Please enter a valid word.');
		return firstMatch;
	responses.push(firstMatch);
}

guessPlay(); 

var play
play = ["football","ball", "dead", "ground", "around", "chess", "music", "fight", "hockey", "the trumpet", "the piano"];

var fly 
fly = ["gonna", "low", "plane", "plane", "around", "away", "fly", "boy", "a kite", "zipper", "bird"]

var run 
run = ["paint", "ball", "way", "down", "away", "a light", "water", "the office", "down the road", "the piano"];

console.log('Test Mode');


