var color = ["black", "blue", "red", "white"];
var name = ["Ed", "John", "Mary", "Sue"];

console.log(color);
color.push("purple");
console.log(color);

console.log(name);
name.push("Jack");
console.log(name)

var horse = {}

for (i=0; i < name.length; i++) {
	horse[name[i]] = color[i];
}

console.log(horse)


// Release 2

function Car(color, year, model) {
	console.log("Our car is the color:", this)

	this.color = color;
	this.year = year;
	this.model = model;

	this.ignition = function() {
		console.log("Vroom!");
	};

	console.log("CAR INITIALIZED!");
}


console.log("A car has arrived ...");
var car1 = new Car("Black", 2016, "Toyota");
var car2 = new Car("White", 2014, "Ford");
var car3 = new Car("Green", 2010, "Mercedes");

console.log(car1);
console.log(car2);
car2.ignition();
console.log(car3);