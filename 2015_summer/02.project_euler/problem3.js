// https://projecteuler.net/problem=3
// The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 600851475143 ?
var primeFactors = [];
var factors = [];
var factorsOfFactor = [];
var maxPrimeFactor = new String();

var findFactors = function (upperLimit) {
	for (var i = 1; i <= upperLimit; i++){
		if (upperLimit % i === 0) {
			factors.push(i);
			};
	};
	console.log("Factors: " + factors);
};

// We can use while loop instead of for loop and if statement.

var findPrimeFactors = function (factor) {
	for (var k = 1; k <= factor; k++){
		if (factor % k === 0) {
			factorsOfFactor.push(k);
		};
	};
	if (factorsOfFactor.length === 2){
		primeFactors.push(factor);
	};
	factorsOfFactor.length = 0;
};

var primeNumber = function (upperLimit) {
	findFactors(upperLimit);

	if (factors.length === 2) {
		console.log(upperLimit + " is a prime number.");
	} else {
		console.log(upperLimit + " is NOT a prime number.");

		for (var j = 0; j < factors.length; j++) {
			findPrimeFactors(factors[j]);
		};

		maxPrimeFactor = Math.max.apply(Math, primeFactors);

		console.log("But, the prime factors: " + primeFactors);
		console.log("The largest prime factor: " + maxPrimeFactor);
	};
};

primeNumber(600851475143);
