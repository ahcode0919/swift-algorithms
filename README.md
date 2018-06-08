# Swift Algorithms [![Build Status](https://travis-ci.org/ahcode0919/swift-algorithms.svg?branch=master)](https://travis-ci.org/ahcode0919/swift-algorithms)

Repository of solutions to various problems and algorithms in Swift. Possible solutions
and there performance trade offs are evaluated

[Integers](#integers)

[Strings](#strings)

## Integers

#### Century From Year

Given a year, return the century it is in. The first century spans from the year
1 up to and including the year 100, the second - from the year 101 up to and
including the year 200, etc.

Example:

* For `year = 1905`, the output should be `centuryFromYear(year) = 20`
* For `year = 1700`, the output should be `centuryFromYear(year) = 17`
* [input] integer year - A positive integer, designating the year.
* [output] integer - The number of the century the year is in.

```
static func centuryFromYear(year: Int) -> Int {
    let hundreths = Double(year) / 100
    return Int(hundreths.rounded(.up))
}
```

## Strings

#### Three Different Letters

Write a function that accepts two strings, and returns true if they are identical in length
but have no more than three different letters, taking case and string order into account.

```
  static func threeDifferentLetters(s1: String, s2: String) -> Bool {
      guard s1.count == s2.count else { return false }
      var count = 0

      for index in s1.indices {
          if s1[index] == s2[index] { continue }
          if count < 3 {
              count += 1
              continue
          }
          return false
      }
      return true
  }
```
