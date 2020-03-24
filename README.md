# Swift Algorithms [![Build Status](https://travis-ci.org/ahcode0919/swift-algorithms.svg?branch=master)](https://travis-ci.org/ahcode0919/swift-algorithms)

Repository of solutions to various problems and algorithms in Swift. For many
problems many of the common approaches are presented. Some are more efficient than
others. Xcode Project contains performance tests for those that are curious.

- [Arrays](#arrays)
- [Integers](#integers)
- [Strings](swift-algorithms/swift-algorithms/Strings/README.md)

- [Resources](#resources)
- [Author](#author)
- [License](#license)

## Arrays

#### Remove Duplicates

Find and remove duplicate elements from an Array

Approach 1 - Use an NSOrderedSet to maintain order and return unique elements

```swift
static func removeDuplicatesWithNSOrderedSet<T>(_ array: [T]) -> [T] {
    let set = NSOrderedSet(array: array)
    guard let newArray = set.array as? [T] else {
        return array
    }
    return newArray
}
```

Approach 2 - Use `reduce(into:_)` to iterate through array

```swift
static func removeDuplicatesWithReduce<T: Equatable>(_ array: [T]) -> [T] {
    return array.reduce(into: []) { (results, value) in
        let elementPresent = results.contains() { (element) -> Bool in
            element == value
        }
        if !elementPresent {
            results.append(value)
        }
    }
}
```

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

```swift
static func centuryFromYear(year: Int) -> Int {
    let hundreths = Double(year) / 100
    return Int(hundreths.rounded(.up))
}
```

## Resources

- [Hacker Rank](https://www.hackerrank.com)
- [Leetcode](https://leetcode.com)
- [Cracking The Coding Interview - Gayle Laakmann McDowell](http://www.crackingthecodinginterview.com)
- [Swift Coding Challenges - Paul Hudson](https://www.hackingwithswift.com/store/swift-coding-challenges)

## Author

Aaron Hinton, ahcode0919@users.noreply.github.com

## License

This project is available under the MIT license. See the LICENSE file for more info.
