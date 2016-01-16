#!/usr/bin/env xcrun swift

// https://projecteuler.net/problem=9
//
// A Pythagorean triplet is a set of three natural numbers, a < b < c, for
// which,
//
// a^2 + b^2 = c^2
//
// For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
//
// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc.

var a = 0
var b = 0
var c = 0

repeat {
  a++
  b = a + 1

  repeat {
    b++
    c = b + 1

    repeat {
      c++

      if (a+b+c == 1000) {
        if (a*a + b*b == c*c) {
          print("\(a)^2 + \(b)^2 = \(c)^2")
          print(a*b*c)
        }
      }

    } while (c < 1000)
  } while (b < 1000)
} while (a < 1000)

let answer = "200^2 + 375^2 = 425^2"
