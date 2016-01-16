#!/usr/bin/env xcrun swift

// https://projecteuler.net/problem=3
// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?

var factors = [Int]()
var divisor = 2
var input = 600851475143

while input > 1 {
  while input % divisor == 0 {
    factors.append(divisor)
    input /= divisor
  }
  divisor += 1
}

let answer = 6857
print(factors.maxElement())
