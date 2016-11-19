// Reverse function
// Take a string and starting from the end of the string
// Create a new string

function reverse(str) {
	var output = "";
	for (var i = (str.length-1); i >= 0; i--) {
//	console.log(str[i])
		output += str[i];
	}
	return output;
}

// I cannot use negative indexes to refer to the position
// of the character in a string. It returns 'undefined'
// However str.slice() does allow the use of negative indexes.


console.log(reverse("Hello"));

var reversed = reverse("Hello World");
//console.log(reversed);

if (1 == 1) {
	console.log(reversed);
}