// https://projecteuler.net/problem=1
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

var sumOfMultiples = 0;

var multiples = function (upperLimit) {
	for (var i = 0; i < upperLimit; i++) {
		if (i % 3 === 0 || i % 5 === 0) {
			console.log(i);
			sumOfMultiples += i;
		};
	};
	console.log("The sum of all the multiples: " + sumOfMultiples);	
}

multiples(1000);