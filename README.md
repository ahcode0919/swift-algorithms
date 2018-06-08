# Swift Algorithms [![Build Status](https://travis-ci.org/ahcode0919/swift-algorithms.svg?branch=master)](https://travis-ci.org/ahcode0919/swift-algorithms)

Repository of solutions to various problems and algorithms in Swift. Possible solutions
and there performance trade offs are evaluated

[Arrays](#arrays)

[Integers](#integers)

[Strings](#strings)

## Arrays

#### Remove Duplicates

Find and remove duplicate elements from an Array

Approach 1 - Use an NSOrderedSet to maintain order and return unique elements

```
static func removeDuplicatesWithNSOrderedSet<T>(_ array: [T]) -> [T] {
    let set = NSOrderedSet(array: array)
    guard let newArray = set.array as? [T] else {
        return array
    }
    return newArray
}
```

Approach 2 - Use `reduce(into:_)` to iterate through array

```
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

```
static func centuryFromYear(year: Int) -> Int {
    let hundreths = Double(year) / 100
    return Int(hundreths.rounded(.up))
}
```

## Strings

#### Condense Whitespace

Remove the whitespace from a String.

* Example: "Hello World" -> "HelloWorld"

Approach 1: Remove Whitespace using a for loop and a character array
```
static func condenseWhitespaceWithLoop(_ text: String) -> String {
    var charArray = [Character]()
    var lastCharWasSpace = false

    for char in text {
        if lastCharWasSpace == false {
            charArray.append(char)
            if char == " " {
                lastCharWasSpace = true
            }
        } else {
            if char == " " {
                continue
            }
            charArray.append(char)
            lastCharWasSpace = false
        }
    }
    return String(charArray)
}
```

Approach 2: Utilize a regular expression to remove whitespace.

```
static func condenseWhitespaceWithRegex(_ text: String) -> String {
    return text.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
}
```

Approach 3: Utilize the `split(separator:_)` String function remove whitespace
and then `joined(separator:_)` to concatenate the result
```
static func condenseWhitespaceWithSplit(_ text: String) -> String {
    var result = text.split(separator: " ").joined(separator: " ")
    if text.first == " " {
        result.insert(" ", at: result.startIndex)
    }
    if text.last == " " {
        result.append(" ")
    }
    return result
}
```

#### Contains

Check if one string contains another string

Approach 1: Use `range(of:_)` String API function to check for presence of substring

```
static func containsWithRange(_ s1: String, contains s2: String) -> Bool {
    if s1.count < s2.count || s1.isEmpty && s2.isEmpty {
        return false
    }
    return s1.range(of: s2) != nil
}
```

Approach 2: Use for loop to iterate across strings

```
static func containsWithLoop(_ s1: String, contains s2: String) -> Bool {
    if s1.count < s2.count || s1.isEmpty && s2.isEmpty {
        return false
    }

    let input1 = Array(s1)
    let input2 = Array(s2)

    var currentIndex = 0

    while currentIndex < input1.count - input2.count {
        var match = true
        for i in 0..<input2.count {
            if input1[currentIndex] != input2[i] {
                currentIndex += 1
                match = false
                break
            }
            currentIndex += 1
        }
        if match {
            return true
        }
    }
    return false
}
```

Approach 3: Use native String API `contains(:_)`

```
static func containsWithStringAPI(_ s1: String, contains s2: String) -> Bool {
    return s1.contains(s2)
}
```

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
