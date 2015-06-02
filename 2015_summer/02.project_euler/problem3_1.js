// https://projecteuler.net/problem=3
// The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 600851475143 ?

var primeFactors = [];
var d = 2;
var maxPrimeFactor = 0;

var findPrimeFactors = function (number) {
	var n = number;
	while (n > 1) {
		while (n % d === 0) {
			primeFactors.push(d);
			n /= d;
		};
		d++ ;
	};

	console.log(primeFactors);

	maxPrimeFactor = Math.max.apply(Math, primeFactors);

	if (primeFactors.length === 1) {
		console.log(number + " is a prime number. ")
	} else {
		console.log(number + " is NOT a prime number. The largest prime factor is " + maxPrimeFactor)
	}
};

findPrimeFactors(600851475143);