#!/usr/bin/env xcrun swift

// https://projecteuler.net/problem=10
// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
//
// Find the sum of all the primes below two million.

var primes = [Int]()
var numbers = Array(2...2000000)

while numbers.count > 0 {
  let prime = numbers.removeAtIndex(0)
  primes.append(prime)
  numbers = numbers.filter { $0 % prime != 0 }
}

let answer = 142913828922
print(primes.reduce(0, combine: +))
