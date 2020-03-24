#  Arrays

- [First Duplicate](#first-duplicate)
- [Remove Duplicates](#remove-duplicates)

## First Duplicate

Given an array a that contains only numbers  find the first duplicate number

```swift
static func firstDuplicate(_ array: Array<Int>) -> Int? {
    var uniqueNums = Set<Int>()
    
    for (index, number) in array.enumerated() {
        if uniqueNums.contains(number) {
            return index
        }
        uniqueNums.insert(number)
    }
    return nil
}
```

## Remove Duplicates

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
