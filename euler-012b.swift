#!/usr/bin/env xcrun swift

// https://projecteuler.net/problem=12
// 
// The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle 
// number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
// 
// 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
// 
// Let us list the factors of the first seven triangle numbers:
// 
//  1: 1
//  3: 1,3
//  6: 1,2,3,6
// 10: 1,2,5,10
// 15: 1,3,5,15
// 21: 1,3,7,21
// 28: 1,2,4,7,14,28
// 
// We can see that 28 is the first triangle number to have over five divisors.
// 
// What is the value of the first triangle number to have over five hundred divisors?

import Darwin

func factors(n: Int) -> [Int] {
  var factors = [Int]()

  for x in (1...n) {
    if n % x == 0 {
      factors.append(x)
      factors.append(n/x)
    }
  }

  return Array(Set(factors)).sort()
}


// failed at 26000: 338013001 2
// max 12709: 80765696 144
var triangleNumber = 1
var index = 1
var factorCount = 1
var maxFactorCount = 1

repeat {
  triangleNumber = triangleNumber + index
  factorCount = factors(triangleNumber).count

  if factorCount > maxFactorCount {
    maxFactorCount = factorCount
    print("\(index): \(triangleNumber) \(factorCount)")
  }

  if index % 1000 == 0 {
    print("\(index): \(triangleNumber) \(factorCount)")
  }
  index += 1
} while (factorCount < 500)

print("\(index): \(triangleNumber)")