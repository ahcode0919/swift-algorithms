#  Arrays

- [First Duplicate](#first-duplicate)
- [Remove Duplicates](#remove-duplicates)
- [Remove Duplicates From Sorted Array](#remove-duplicates-from-sorted-array)

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

Approach 2 - Use `reduce(into:_)` to iterate through array. This approach is less efficient due to the time complexity of the inner `contains`

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

Approach 3  - Use a `Set` to track duplicates as we build a new array in-order

```swift
static func removeDuplicatesWithSet<T: Hashable & Equatable>(_ array: [T]) -> [T] {
    var uniqueValues: [T] = []
    var seen = Set<T>()
    for value in array {
        if seen.contains(value) {
            continue
        } else {
            uniqueValues.append(value)
            seen.insert(value)
        }
    }
    return uniqueValues
}
```

## Remove Duplicates From Sorted Array

Remove duplicate values in-place from a sorted array. 

```swift
static func removeDuplicates(array: inout [Int]) {
    var count = 0
    while count < array.count - 1 {
        if array[count] == array[count + 1] {
            array.remove(at: count + 1)
        } else {
            count += 1
        }
    }
}
```
