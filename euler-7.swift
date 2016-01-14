#!/usr/bin/env xcrun swift

// https://projecteuler.net/problem=7
// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
// that the 6th prime is 13.
// What is the 10 001st prime number?

var primes = [2, 3, 5, 7, 11, 13]
var current = primes.maxElement()!

while primes.count < 10001 {
  current += 1

  if primes.filter({ current % $0 == 0 }).count == 0 {
    primes.append(current)
  }
}

let answer = 104743
print(primes.last)
