import Foundation

public func binarySearch(searchNumber: Int, searchIn array: [Int]) {
    let array = array.sorted()
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex)/2
        let middleValue = array[middleIndex]
        
        if middleValue == searchNumber {
            print("🥳The number '\(searchNumber)' was found in \(array)🥳")
            return
        }
        
        if searchNumber < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchNumber > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    print("🤬The number '\(searchNumber)' was NOT found in \(array)🤬")
}


public func binarySearchRecursive(searchNumber: Int, searchIn array: [Int]) {
    if array.count == 0 { print("BSRecursive: 🤬The number '\(searchNumber)' was NOT found in \(array)🤬"); return }
    let array = array.sorted()
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midValue = array[midIndex]
    
    if searchNumber < array[minIndex] || searchNumber > array[maxIndex] {
        print("BSRecursive: 🤬The number '\(searchNumber)' was NOT found in \(array)🤬")
        return
    }
    
    if searchNumber > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearchRecursive(searchNumber: searchNumber, searchIn: slice)
    }
    
    if searchNumber < midValue {
        let slice = Array(array[minIndex...midIndex-1])
        return binarySearchRecursive(searchNumber: searchNumber, searchIn: slice)
    }
    
    if searchNumber == midValue {
        print("BSRecursive: 🥳The number '\(searchNumber)' was found in \(array)🥳")
        return
    }
}
