#!/usr/bin/env xcrun swift

// https://projecteuler.net/problem=4
// A palindromic number reads the same both ways. The largest palindrome
// made from the product of two 2-digit numbers is 9009 = 91 × 99.
//
// Find the largest palindrome made from the product of two 3-digit numbers.

var largestPalindome = 0

for a in (1...999) {
  for b in (1...999) {
    let product = a*b
    let productString = "\(product)"
    let reverseString = String(productString.characters.reverse())

    if product > largestPalindome && productString == reverseString {
      largestPalindome = product
    }
  }
}

let answer = 906609
print(largestPalindome)
