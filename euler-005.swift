#!/usr/bin/env xcrun swift

// https://projecteuler.net/problem=5
// 2520 is the smallest number that can be divided by each of the numbers
// from 1 to 10 without any remainder.
// What is the smallest positive number that is evenly divisible by all of
// the numbers from 1 to 20?

var attempt = 0
var increment = 20
var failures: Bool

repeat {
  attempt += increment
  failures = false

  for divisor in (1...20) {
    if attempt % divisor != 0 {
      failures = true
      break
    }
  }

} while (failures)

let answer = 232792560
print(attempt)
