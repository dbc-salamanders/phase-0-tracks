// The function will take one variable as an argument - an array of strings
// The function will iterate over each string in the Array
// The function will declare a variable longest_word. Set default value to to one character string 
// If the length of the string currently evaluated is greater than longest_word, the string becomes longest_word
// Push longest_word into the array longest_words
// If longest_word pushed into the array is longer than the word currently in the array, remove the shorter word from the array (slice)
// After iterating through each string, print the contents of the array
// Expect the longest words in the original array passed in to be printed


var array = ["Bo", "Jackson", "football", "baseball"];

function longest_word(words) {
	var longest_word = "a";
	var longest_words = ["a"];
	for (var i = 0; i < words.length; i ++) {
		if (words[i].length >= longest_word.length) {
			longest_word = words[i];
			longest_words.push(longest_word);
		}
		if (longest_word.length > longest_words[0].length) {
			longest_words.splice(0,1);
		}
	}
console.log(longest_words);
}

longest_word(array);

//Release 1
// The function takes 2 arguments - object_A and object_B
// Set a loop within the function with an initial index of 0
// Separate keys in both objects and push into separate arrays - output: keys_array_A and keys_array_B
// Loop through keys_array_A.
// If the item at current index in keys_array_A = item at current index in keys_array_B, push item into new array. Store as matches_array
// Compare values in each object corresponding to matching keys
// If object_A[key] = object_B[key], evaluate true
// Loop through matches_array to perform this comparison for each matching key
// At the top of the function, set default value of matches false
// For each key-value pair match, set value of matches to true
// Return matches

function find_matches(object_A, object_B) {
	var matches = false;
	var keys_array_A = [];
	var keys_array_B = [];
	var matches_array = [];
	for (var keysA in object_A) {
		if (!object_A.hasOwnProperty(keysA)) {
			continue;
		}
		
		keys_array_A.push(keysA);
		
	}
	
	for (var keysB in object_B) {
		if (!object_B.hasOwnProperty(keysB)) {
			continue;
		}
		keys_array_B.push(keysB);
	}
	

	for (var i = 0; i < keys_array_A.length; i++) {
		if(keys_array_A[i] == keys_array_B[i]) {
			matches_array.push(keys_array_A[i]);
		}
	}
	for (var index = 0; index < matches_array.length; index++) {
		if(object_A[matches_array[index]] == object_B[matches_array[index]]) {
			matches = true;
		}
	}
	console.log(matches);
	return matches;
}

var object1 = {name: "Sam", age: 31};
var object2 = {name: "Aaron", age: 29};
find_matches(object1, object2);

//Release 2
// The function takes one argument - an integer
// Initiate a loop with initial index = 0, loop until current index is greater than the integer passed in
// Declare an empty string and an empty array as variables.
// Declare the alphabet as a variable.
// Inside of loop, initiate another loop
// While the length of the string is less than a randomly generated number, add a random number of letters from the alphabet string (declared earlier) to the string
// When finished, push the string into the empty array
// Print the contents of the array when loop is finished


function randword(times){
    var string = "";
    var chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var array = [];
    for (var i = 0; i < times; i++){
    string = "";
    while(string.length < Math.floor(Math.random() * 10) && times > 0 ){
        string += chars[Math.floor(Math.random() * chars.length)];
    }
    array.push(string);
    }
    console.log(array);
    return array;
}

randword(5);

var rand_array = randword(10);
longest_word(rand_array);