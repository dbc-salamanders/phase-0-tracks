var names = ["Ed", "James", "Lisa", "Sarah"]
var colors = ["red", "white", "blue", "purple"];

function add_color(color) {
  colors.push(color)
}

function add_name(name) {
	names.push(name)
}

add_color("brown")
console.log(colors)

add_name("Ray")
console.log(names)

// Release 1 - build an object
// Declare a function horse_object
// Inside horse_object, declare an empty object. Store as variable 'object'
// The function will loop through each item in the names array, starting at index 0
// The item in names corresponding to the current index will be pushed into object
// Add a colon in object to each item name pushed in - to designate as key
// Add to object the item from the colors index that corresponds to the same index

function horse_object() {
	var object = {};
  	for (var i = 0; i < names.length; i++) {
	object[names[i]] = colors[i];
 }
 console.log(object);
}

horse_object();