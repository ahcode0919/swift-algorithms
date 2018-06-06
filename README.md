# Swift Algorithms [![Build Status](https://travis-ci.org/ahcode0919/swift-algorithms.svg?branch=master)](https://travis-ci.org/ahcode0919/swift-algorithms)

Repository of solutions to various problems and algorithms in Swift. Multiple solutions
and there performance trade offs are evaluated

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
