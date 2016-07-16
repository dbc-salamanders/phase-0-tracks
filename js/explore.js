// The function takes one parameter - a string
// Loop through each character in the string, starting with an index of -1 and working backwords
// Push the letter corresponding to the current index into an empty array
// Continue until the index is less than 0
// Join the contents of the array into a single string. Store as variable 'reverse'
// Print reverse
// Outside function, declare variable 'valid'. Set value to true
// If valid = true, run revstring function

function revstring() {
var string = "hello"
var array = []


for (var i = string.length-1; i >= 0; i--) {
  array.push(string[i]);
}

var reverse = array.join(['']);
console.log(reverse)
}

var valid = true;
var test = "liverpool"

if (valid) {
	revstring(test);
}