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

//Release 2

function randword(times){
    var string = "";
    var chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var array = [];
    for (var i = 0; i < times; i++){
    string = "";
    while(string.length < Math.floor(Math.random() * 10) + 1 && times > 0 ){
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