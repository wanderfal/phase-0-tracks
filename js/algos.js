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
			return console.log(phrase + " is your longest phrase!");
			break;
		} else if (phrase.length < arr[i].length) {
			phrase = arr[i];
		} else {
			continue;
		}
	}
}

// Release 0 Driver Code

var array = ['Hello', 'Hello World', 'Kane Lee']
longest_phrase(array)

var array2 = ['thelongestwordever', 'Kane Lee', 'Hello', 'Hello World']
longest_phrase(array2)

// Release 0 Driver code

// Release 1
// Find Key-Value Match
// 