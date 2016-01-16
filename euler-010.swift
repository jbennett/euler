#!/usr/bin/env xcrun swift

// https://projecteuler.net/problem=10
// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
//
// Find the sum of all the primes below two million.

import Darwin

let n = 2000000
var sameprimes = Set(2...n)
sameprimes.subtractInPlace(
	(2...Int(sqrt(Double(n)))).flatMap { (2*$0).stride(through:n, by:$0) }
)
let primes = sameprimes.sort()

let answer = 142913828922
print(primes.reduce(0, combine: +))
