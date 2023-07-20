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
