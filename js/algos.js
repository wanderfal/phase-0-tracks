// Release 0
// Find Longest Phrase
//
// Check the length of the first element of the array.
// Next we continue going down the array, comparing the lengths
// of each element.
// Each time that we find a element of greater length we use it to
// compare with other elements further down the array.
// Once we reach the end of the array, the element that we are keeping
// track of will be the element in the array with the greatest length.

function longest_phrase(arr) {
	var phrase = '';
	for (var i = 0;; i++) {
		// console.log(arr[i])
		if (i == (arr.length)) {
			return console.log(phrase + " is your longest phrase!" + '\n');
			break;
		} else if (phrase.length < arr[i].length) {
			phrase = arr[i];
		} else {
			continue;
		}
	}
}


// Release 1
// Find Key-Value Match
// We choose one object and compare each key to all the keys
// in the second object.
// If a match is found, then we compare their values.
// If the key-value pairs match between the two objects, we
// end the function and return 'true'.
// Otherwise we continue looking through each key in the first
// object and comparing it to every key in the second object
// looking for key matches, before looking for value matches.

function object_match(obj1, obj2) {
	for (var key1 in obj1) {
		for (var key2 in obj2) {
			if (key1 == key2) {
				if (obj1[key1] == obj2[key2]) {
					return console.log(true);
					break;
				} else {
					continue;
				}
			} else {
				continue;
			}
		}
	}
	return console.log(false);
}


// Release 2
// Based on a randomly generated integer, the word's length
// is determined. We then construct a string based on the
// determined length and add that string to a array.
// We then repeat until we have enough 'words' in the array.
// Minimum length of 1 letter to Maximum length of 10 letters.

function rand_data(int) {
	var chars = "abcdefghijklmnopqrstuvwxyz"
	var output = []
	var length = 0
	var letter = ""
	for (var x = 0; x < int; x++) {
		var word = "";
		length = Math.floor(Math.random()*10 + 1);
		for (var y = 0; y < length; y++) {
			letter = chars[Math.floor(Math.random()*26)];
			word += letter;
		}
		output.push(word);
	}
// Ran into problems with reading undefined returns
// It was because I had originally put
// return console.log(output);
// It seems that I had mixed them up, and I would need
// to explicity return the actual array, instead of the
// printed array.
	console.log(output);
	return output;
}

///////////////////////////////////////////////////////////////////

// Release 0 Driver Code
var array = ['Hello', 'Hello World', 'Kane Lee']
longest_phrase(array)

var array2 = ['thelongestwordever', 'Kane Lee', 'Hello', 'Hello World']
longest_phrase(array2)
// Release 0 Driver code


// Release 1 Driver Code
var associated_array1 = {name: "Steven", age: 54, hobby: "cycling"}
var associated_array2 = {name: "Tamir", age: 54, hobby: "baseball"}
object_match(associated_array1, associated_array2)
var objA = {fruit: "Orange", age: "50"}
var objB = {fruit: "Banana", age: "45"}
object_match(objA, objB)
// Release 1 Driver Code


// Release 2 Driver Code
rand_data(4)
// Release 2 Driver Code

// 7.3 Driver Code

// longest_phrase(rand_data(10))

for(var x=0; x<10; x++) {
	console.log("This is number " + (x+1) +" !")
	var num = Math.floor(Math.random()*10 + 2);
	console.log("You have an array with " + num + " elements!")
	longest_phrase(rand_data(num));
}
